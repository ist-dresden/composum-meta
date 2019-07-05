# Sling Dependency JARs

See [Description and Usage](../../../README.md) .

## How to create a new version for a new Sling Starter version

When run in the Sling Starter top directory, the file [ExtractLaunchpadDependencies.groovy](./ExtractLaunchpadDependencies.groovy)
scans all JARs below sling/ for entries with the name META-INF/maven and creates a file
`sling-dependencies.xml` containing this information in maven format. This can be used to create
a new version of the `sling-starter-dependencies` for another Sling Starter jar.

The Composum Nodes dependencies are omitted here, since this is primarily used to specify Sling dependencies
within the Composum Suite.
