# Composum Meta
This contains parent-POMs and other metainformation about Composum projects.

## IST parent poms

The directory `ist/parent` contains the parent `pom` for the various projects of [IST GmbH Dresden](https://www.ist-software.com/), many of which are part of or related to the [Composum](http://composum.com) platform.

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

TODO: cross check with bundle listing.
