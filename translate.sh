#!/bin/bash -e

J2OBJC=./vendor/j2objc/j2objc

${J2OBJC} -d src/main/objc -use-arc -cp build/libs/lucenestudy.jar `find src/main/java -name *.java`
${J2OBJC} -d src/test/objc -use-arc -cp src/test/java:build/libs/lucenestudy.jar:${J2OBJC}/lib/j2objc_junit.jar:${J2OBJC}/lib/hamcrest-core-1.3.jar `find src/test/java -name *.java`
