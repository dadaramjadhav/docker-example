# without maven
FROM openjdk:17-jdk-alpine
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]


# multistage docker image
# FROM maven:3.8.3-openjdk-17 as stage1
# ENV MAVEN_OPTS="-XX:+TieredCompilation -XX:TieredStopAtLevel=1"
# WORKDIR /opt/demo
# COPY pom.xml .
# RUN mvn dependency:go-offline
# COPY ./src ./src
# RUN mvn clean install -Dmaven.test.skip=true

# FROM maven:3.8.3-openjdk-17
# WORKDIR /opt/demo
# COPY --from=stage1 /opt/demo/target/cs-1.1.jar /opt/demo/app.jar
# ENTRYPOINT ["java","-jar","/opt/demo/app.jar"]






# with maven
# FROM maven:3.8.3-openjdk-17
# WORKDIR /example

# COPY . .

# RUN mvn clean  install

# RUN cp ./target/cs-1.1.jar app.jar

# ENTRYPOINT ["java","-jar","app.jar"]
