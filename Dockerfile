FROM maven:3.8.3-openjdk-17
WORKDIR /example

RUN pwd

COPY . .

RUN pwd

RUN mvn clean  install

RUN pwd

COPY ./target/cs-1.1.jar app.jar

RUN pwd

RUN ls

ENTRYPOINT ["java","-jar","app.jar"]
