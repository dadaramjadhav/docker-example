FROM maven:3.8.3-openjdk-17
WORKDIR /example
COPY . .
RUN mvn clean  install

COPY ./target/cs-1.1.jar app.jar

RUN ls 

ENTRYPOINT ["java","-jar","app.jar"]
