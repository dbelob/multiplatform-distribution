# Multi platform distribution for Java application

The example demonstrates how to create multi platform distributions for applications in *Java 21*.

## Requirements

* [JDK 21+](https://www.oracle.com/java/technologies/downloads/)
* [Apache Maven 3.9.0+](https://maven.apache.org/download.cgi)
* [Inno Setup 6.2.2+](https://jrsoftware.org/isinfo.php)

## Compilation and package creation

With native packages:

    mvn clean package -P native-deploy
    
Without native packages (only *ZIP* file):

    mvn clean package
    
## Location of package files

For all platforms:

    multiplatform-distribution-distrib/target/multiplatform-distribution-<version>-no-jre.zip

For *Windows*:

    multiplatform-distribution-client/target/multiplatform-distribution-<version>.exe

For *macOS*:

    multiplatform-distribution-client/target/multiplatform-distribution-<version>.dmg

For *Linux*:

    multiplatform-distribution-client/target/multiplatform-distribution-<version>.tar.gz
    multiplatform-distribution-client/target/multiplatform-distribution_<version>.deb
    multiplatform-distribution-client/target/multiplatform-distribution_<version>.rpm

## Article

See [Habr](https://habr.com/company/jugru/blog/340248/) (Russian)
