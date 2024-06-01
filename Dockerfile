FROM maven:3.8.3-openjdk-17
WORKDIR /example

COPY . .

RUN mvn clean  install

RUN cp ./target/cs-1.1.jar app.jar

ENTRYPOINT ["java","-jar","app.jar"]
