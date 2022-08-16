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
        stage("sonar"){
            steps{
                mvn clean verify sonar:sonar \
  -Dsonar.projectKey=sonar12 \
  -Dsonar.host.url=http://65.1.144.54:9000 \
  -Dsonar.login=sqp_3a5ce4e49bd278be09c3218937aa808ec46c6b7c
            }
        }
    }
}
