FROM maven
WORKDIR /cs
COPY . .
RUN mvn clean  install
COPY ./target/cs-1.1.jar cs-1.1.jar
ENTRYPOINT ["java","-jar","cs-1.1.jar"]