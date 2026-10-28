MyBatis JPetStore
=================

[![Java CI](https://github.com/mybatis/jpetstore-6/actions/workflows/ci.yaml/badge.svg)](https://github.com/mybatis/jpetstore-6/actions/workflows/ci.yaml)
[![Container Support](https://github.com/mybatis/jpetstore-6/actions/workflows/support.yaml/badge.svg)](https://github.com/mybatis/jpetstore-6/actions/workflows/support.yaml)
[![Coverage Status](https://coveralls.io/repos/github/mybatis/jpetstore-6/badge.svg?branch=master)](https://coveralls.io/github/mybatis/jpetstore-6?branch=master)
[![Docs](https://img.shields.io/badge/docs-mybatis.org-blue?logo=github)](https://mybatis.org/jpetstore-6/)
[![License](https://img.shields.io/:license-apache-brightgreen.svg)](https://www.apache.org/licenses/LICENSE-2.0.html)

![mybatis-jpetstore](https://mybatis.org/images/mybatis-logo.png)

JPetStore 6 is a full web application built on top of MyBatis 3, Spring 5 and Stripes.

## Requirements

- Java 21 (LTS) or newer. The project is compiled with `--release 21`; the build itself also runs on JDK 25 and 26.
- Maven 3.9.16 or newer (the bundled Maven wrapper `./mvnw` downloads a compatible version).

## Other versions that you may want to know about

- JPetstore on top of Spring, Spring MVC, MyBatis 3, and Spring Security https://github.com/making/spring-jpetstore
- JPetstore with Vaadin and Spring Boot with Java Config https://github.com/igor-baiborodine/jpetstore-6-vaadin-spring-boot
- JPetstore on MyBatis Spring Boot Starter https://github.com/kazuki43zoo/mybatis-spring-boot-jpetstore

## Run on Application Server
Running JPetStore sample under Tomcat (using the [cargo-maven2-plugin](https://codehaus-cargo.github.io/cargo/Maven2+plugin.html)).

- Clone this repository

  ```
  $ git clone https://github.com/mybatis/jpetstore-6.git
  ```

- Build war file

  ```
  $ cd jpetstore-6
  $ ./mvnw clean package
  ```

- Startup the Tomcat server and deploy web application

  ```
  $ ./mvnw cargo:run -P tomcat9
  ```

  > Note:
  >
  > We provide maven profiles per application server as follow:
  >
  > | Profile             | Description                         | Java 21 |
  > | ------------------- | ----------------------------------- | ------- |
  > | tomcat9 (preferred) | Running under the Tomcat 9.0        | Supported |
  > | jetty12-ee8         | Running under the Jetty 12          | Supported |
  > | liberty26-ee8       | Running under the WebSphere Liberty | Supported |
  > | tomee8              | Running under the TomEE 8.0         | Supported |
  > | wildfly26           | Running under the WildFly 26        | Supported |
  > | glassfish5          | Running under the GlassFish 5       | Not compatible |
  > | payara5             | Running under the Payara 5          | Not compatible |
  > | resin4              | Running under the Resin 4           | Not compatible |

- Run application in browser http://localhost:8080/jpetstore/
- Press Ctrl-C to stop the server.

- 'glassfish5', 'payara5' and 'resin4' are not compatible with Java 21 and are kept for reference only:
  - 'glassfish5' only runs under Java 8, which cannot load classes compiled for Java 21.
  - 'payara5' requires the whole build to run under Java 17 or older, which cannot compile for Java 21.
  - 'resin4' is end of life and not certified for Java 21.

## Run on Docker
```
docker build . -t jpetstore
docker run -p 8080:8080 jpetstore
```
or with Docker Compose:
```
docker compose up -d
```

## Try integration tests

Perform integration tests for screen transition.

```
$ ./mvnw clean verify -P tomcat9
```
