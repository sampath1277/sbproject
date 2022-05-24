
node{
    stage('Scm Checkout'){
        git branch: 'main', url: 'https://github.com/sampath1277/sbproject.git'
    }
    stage('Mvn Package'){
        def mvnHOME = tool name: 'maven-3', type: 'maven'
        def mvnCMD = "${mvnHOME}/bin/mvn"
       sh "${mvnCMD} clean package"
    }
    
}
