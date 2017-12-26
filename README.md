# Multi platform distribution for Java application

The example demonstrates how to create multi platform distributions for applications in *Java 10*.

## Requirements

* [JDK 10 Early-Access Build 36+](http://jdk.java.net/10/)
* [Apache Maven 3.5.0+](https://maven.apache.org/download.cgi)
* [Inno Setup 5.5.9+](http://www.jrsoftware.org/isinfo.php)

## Compilation and package creation

For *Windows* and *macOS*:

    mvn clean package -P native-deploy
    
For *Linux*:

    mvn clean package -P native-deploy,tar-gz
    
## Location of package files

`multiplatform-distribution-client/target/deploy/native/multiplatform-distribution-<version>.exe` (*Windows*)

`multiplatform-distribution-client/target/deploy/native/multiplatform-distribution-<version>.dmg` (*macOS*)

`multiplatform-distribution-client/target/multiplatform-distribution-<version>.tar.gz` (*Linux*)

## Article

See [Habrahabr](https://habrahabr.ru/company/jugru/blog/340248/) (Russian)