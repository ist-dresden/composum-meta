#!/bin/bash
echo Creates a project from this archetype via script, so that variations of the arguments can be easily tested.
echo Copy this script and edit as needed.

set -e -x -v

# we use org.apache.maven.plugins:maven-archetype-plugin:3.1.0:generate since strangely the 3.1.2 creates too many newlines in the poms for some reason

groupId="com.composum.platform"
artifactId="cpm-platform-replication"
version="1.0.0-SNAPSHOT"
package="com.composum.platform.replication"
projectname="Composum Platform Replication"
projectdescription="Composum Platform subproject for replicating content remotely to publish hosts"

mvn "org.apache.maven.plugins:maven-archetype-plugin:3.1.0:generate" -DinteractiveMode=false -DarchetypeGroupId=com.composum.meta.ist.archetype \
    -DarchetypeArtifactId=composum-platform-subproject-archetype -DarchetypeVersion="1.0-SNAPSHOT" -DgroupId="$groupId" -DartifactId="$artifactId" -Dpackage="$package" \
    -Dtenant="$tenant" -Ddomain="$domain" -Dproject="$project" -Dpackage="$package" -Dprojectname="$projectname" -Dprojectdescription="$projectdescription" \
    -Dgoals="clean install"
