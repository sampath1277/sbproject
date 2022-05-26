FROM openjdk 
COPY target/*.jar /
EXPOSE 8090
ENTRYPOINT ["java","jar","/demo-0.0.1-SNAPSHOT.jar"]
