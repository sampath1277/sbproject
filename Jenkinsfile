
node{
    stage('Scm Checkout'){
        git branch: 'main', url: 'https://github.com/sampath1277/sbproject.git'
    }
    stage('Mvn Package'){
        def mvnHOME = tool name: 'maven-3', type: 'maven'
        def mvnCMD = "${mvnHOME}/bin/mvn"
       sh "${mvnCMD} clean package"
    }
     stage('Build Docker Image'){
     sh 'docker build -t sampat7890/my-app:1.0.0 .'
   }
    stage('Push Docker Image'){
     withCredentials([string(credentialsId: 'docker-pwd', variable: 'dockerHubPwd')]) {
        sh "docker login -u sampat7890 -p ${dockerHubPwd}"
     }
     sh 'docker push kammana/my-app:2.0.0'
}
