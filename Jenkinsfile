           
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
