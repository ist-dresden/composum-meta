# An archetype for Composum Platform Subprojects

This was created with mvn archetype:create-from-project and then modified. So for creating new archetypes this
would be a good approach.

Create a project with this using:

    mvn "org.apache.maven.plugins:maven-archetype-plugin:3.1.0:generate" archetype:generate -DarchetypeGroupId=com.composum.meta.ist.archetype -DarchetypeArtifactId=composum-platform-subproject-archetype

per script e.g.

    mvn "org.apache.maven.plugins:maven-archetype-plugin:3.1.0:generate" -DinteractiveMode=false archetype:generate -DarchetypeGroupId=com.composum.meta.ist.archetype -DarchetypeArtifactId=composum-platform-subproject-archetype -DgroupId=com.composum.platform -DartifactId=cpm-platform-somethingnew -Dversion=1.0.0-SNAPSHOT -Dpackage=com.composum.platform.somethingnew -Dprojectname=SomethingNew -Dprojectdescription="Something new we build here"
