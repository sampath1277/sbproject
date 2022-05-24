pipeline {
    agent {label 'docker' }
    environment {
    DOCKERHUB_CREDENTIALS = credentials('docker-hub')
    }
    stages{
        stage('download'){
            steps {
                git 'https://github.com/sampath1277/sbproject.git'
            }
            
        }
               stage('maven'){
            steps {
               sh 'mvn clean package'
                       
            }
            
        }
        stage('build docker image'){
            steps {
                sh 'docker build -t sampat7890/sbapp:$BUILD_NUMBER . '
            }
            
        }
               stage('log into dockerhub'){
            steps {
             sh  ' echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USER --password-stdin '
            }
            
        }
               stage('push to dockerhub'){
            steps {
             sh  'docker push sampat7890:sbapp:$BUILD_NUMBER'
            }
            
        }
    }
    post {
        always {
            sh 'docker logout'
        }
    }
}
