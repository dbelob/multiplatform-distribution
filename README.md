# Multi platform distribution for Java application

The example demonstrates how to create multi platform distributions for applications in *Java 21*.

## Requirements

* [JDK 21+](https://www.oracle.com/java/technologies/downloads/)
* [Apache Maven 3.9.0+](https://maven.apache.org/download.cgi)
* [Inno Setup 6.2.2+](https://jrsoftware.org/isinfo.php)

## Compilation and package creation

For *Windows* and *macOS*:

    mvn clean package -P native-deploy
    
For *Linux*:

    mvn clean package -P native-deploy,tar-gz
    
## Location of package files

`multiplatform-distribution-client/target/multiplatform-distribution-<version>.exe` (*Windows*)

`multiplatform-distribution-client/target/multiplatform-distribution-<version>.dmg` (*macOS*)

`multiplatform-distribution-client/target/multiplatform-distribution-<version>.tar.gz` (*Linux*)

`multiplatform-distribution-distrib/target/multiplatform-distribution-<version>-no-jre.zip`

## Article

See [Habr](https://habr.com/company/jugru/blog/340248/) (Russian)
