FROM ubuntu:latest
RUN sudo apt-get update
RUN sudo apt install openjdk-8-jdk -y
WORKDIR /
COPY ./target/*.jar /
EXPOSE 8080
ENTRYPOINT ["java","-jar","/demo-0.0.1-SNAPSHOT.jar"]
