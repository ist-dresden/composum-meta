/** Renames all generated directories named tenant, domain or project to the values of the corresponding properties. */

import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.Paths

Properties properties = request.properties
String thetenant = properties.getProperty("tenant")
String thedomain = properties.getProperty("domain")
String theproject = properties.getProperty("project")

Map<String, String> dirnamemap = ["tenant": thetenant, "domain": thedomain, "project": theproject]
// println("dirnamemap: " + dirnamemap)

Path projectPath = Paths.get(request.outputDirectory, request.artifactId)
// println("projectPath: " + projectPath)

void renameDirectories(Path path, Map<String, String> dirnamemap) {
    for (Path child : Files.newDirectoryStream(path)) {
        if (Files.isDirectory(child)) {
            String childName = child.getFileName().toString()
            if (dirnamemap.containsKey(childName)) {
                String newname = dirnamemap.get(childName)
                Path renamed = Files.move(child, path.resolve(newname))
                // println("Renaming " + child.toString() + " to " + renamed.toString())
                renameDirectories(renamed, dirnamemap)
            } else {
                renameDirectories(child, dirnamemap)
            }
        }
    }
}

try {
    renameDirectories(projectPath, dirnamemap)
} catch (Throwable t) {
    t.printStackTrace()
    throw t
}
