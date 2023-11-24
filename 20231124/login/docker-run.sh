#!/bin/bash
export JAVA_OPTS="-Xms1g -Xmx1g -XX:MetaspaceSize=256M -XX:MaxMetaspaceSize=256m -XX:+HeapDumpOnOutOfMemoryError"
docker run -it --rm  -p 9080:8080 -e JAVA_OPTS="$JAVA_OPTS" --name app docker.gradle.build/login:1.0.0 