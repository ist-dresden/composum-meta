# Composum Meta
This contains parent-POMs and other metainformation about Composum projects.

## IST parent poms

The directory `ist/parent` contains the parent `pom` for the various projects of [IST GmbH Dresden](https://www.ist-software.com/), many of which are part of or related to the [Composum](http://composum.com) platform.

## Maven artefacts for Pages etc.

There is a couple of maven archetypes that can speed up the process of setting up a new project. Specifically:

- composum-pages-project-archetype to create a new project using Composum Pages, Platform and Nodes,
- composum-bundle-archetype to create an OSGI bundle,
- composum-platform-subproject-archetype for subprojects of Composum Platform

To create a project using the archetype you can do for instance:

    mvn archetype:generate -DarchetypeGroupId=com.composum.meta.ist.archetype -DarchetypeArtifactId=composum-platform-subproject-archetype
 
### Archetype maintenance

For updating the archetypes present in the local repository: `mvn archetype:crawl` ; possibly use `mvn archetype:update-local-catalog` .

When debugging the generation process use the additional parameter -DarchetypeCatalog=local to only use the archetypes in the local maven repository.

Caution: the input of required properties seems to be done in alphabetical order, so if defaults reference other properties these should be named accordingly.

## Sling Starter Dependencies

In `sling/starter` there are a couple of poms that declare the dependency versions of all modules
contained in the [Sling Starter](https://github.com/apache/sling-org-apache-sling-starter) (previously called Sling Launchpad) of various versions,
such that they can be easily included in the `dependencyManagement` section of a Maven pom with scope include.
Thus, it is easy to compile a project wrt. the various versions of the Sling Starter.

To use it, include the following into your pom:

    <dependencyManagement>
        <dependencies>
            <dependency>
                <groupId>com.composum.meta.sling.dependencies</groupId>
                <artifactId>sling-starter-dependencies</artifactId>
                <version>11</version>
                <type>pom</type>
                <scope>import</scope>
            </dependency>
            ...
        </dependencies>
    </dependencyManagement>



<b>Caution</b>: these were created [via script](sling/starter/dependencies/README.md) 
from the JARs contained in the sling/ directory, and might thus have omissions and can contain JARs not actually
deployed as a bundle. They are currently not cross-checked with the [console bundle listing](http://localhost:9090/system/console/bundles) .

TODO: cross check with bundle listing  http://localhost:9090/system/console/bundles.json 
