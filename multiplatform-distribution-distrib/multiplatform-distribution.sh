#!/bin/sh

if [ -n "$JAVA_HOME" -a -x "$JAVA_HOME/bin/java" ]; then
  JRE="$JAVA_HOME"
  echo "Application JRE: $JRE"
  eval "$JRE/bin/java" -jar ${project.build.finalName}.jar ${app.mainClass}
else
  echo "No JRE found. Please validate JAVA_HOME environment variable."
fi
