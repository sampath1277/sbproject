

pipeline{
    agent any
    stages{
        stage('start')
        {
            steps
            {
                sh 'echo "welcome to jenkins "'
              //  sh 'echo "how r u"'
            }
        }
         stage('download')
        {
            steps
            {
                git 'https://github.com/m-chiranjeevi1/spring-boot-demo-docker1.git'
            }
        }
        stage('build')
        {
            steps
            {
               sh 'mvn package'
            }
        }
     
        stage('nexus artfactory uploader')
        {
            steps
            {
              nexusArtifactUploader artifacts: [
                [
              artifactId: 'spring', 
              classifier: '', 
              file: '/home/ec2-user/.jenkins/workspace/pipeline/target/spring-boot.jar', 
              type: 'jar'
                ]
              ], 
              credentialsId: 'e2ca2781-eb79-4949-8ce7-a8a505c1e87c', 
              groupId: 'com.javainterviewpoint', 
              nexusUrl: '172.31.43.185:8081', 
              nexusVersion: 'nexus3', 
              protocol: 'http', 
              repository: 'nexus-repo', 
              version: 'boot'
            }
        }
   /*   stage('deploy')
        {
            steps
            {
                

pipeline{
    agent any
    stages{
        stage('start')
        {
            steps
            {
                sh 'echo "welcome to jenkins "'
              
            }
        }
         stage('download')
        {
            steps
            {
                git 'https://github.com/sampath1277/sbproject.git'
            }
        }
        stage('build')
        {
            steps
            {
               sh 'mvn package'
            }
        }
     
        stage('nexus artfactory uploader')
        {
            steps
            {
             sh 'echo "Nexus step "'
            }
        }
      stage('deploy')
        {
            steps
            {
               sh 'echo "Deploy step "'
            }
        }
       
    }
}
            }
        }
   */    
    }
}
