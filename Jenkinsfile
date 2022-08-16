pipeline {
    agent any
    stages {
        stage("git clone"){
            steps{
                git 'https://github.com/kajendran1/test.git' 
            }
            
        }
        stage("build code"){
            steps{
                sh "mvn clean install"
            }
        }
       
    }
}
