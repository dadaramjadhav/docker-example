FROM maven:3.8.3-openjdk-17
WORKDIR /example

RUN pwd
RUN ls

COPY . .

RUN pwd
RUN ls

RUN mvn clean  install

RUN pwd
RUN ls /example/target

# COPY /example/target/cs-1.1.jar app.jar

RUN pwd
RUN ls

ENTRYPOINT ["java","-jar","./target/cs-1.1.jar"]
