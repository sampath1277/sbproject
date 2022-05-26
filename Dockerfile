FROM openjdk 
ARG JAR_FILE=workspace/dock-app/target/demo-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar 
EXPOSE 8090
ENTRYPOINT ["java","jar","/app.jar"]
