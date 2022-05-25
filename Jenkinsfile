pipeline {
    agent any
      stages{
        stage('Prepare the flow'){
            steps{
                echo 'Hi now we are preparing the flow'
            }
        }
          
        stage('git checkout')
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
               sh 'mvn install'
            }
        }
    }
}
