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
                sh 'mvn clean verify sonar:sonar \
  -Dsonar.projectKey=sonar12 \
  -Dsonar.host.url=http://65.1.144.54:9000 \
  -Dsonar.login=sqp_3a5ce4e49bd278be09c3218937aa808ec46c6b7c'
            }
        }
         stage("build Docker image"){
            steps{
                sh "docker build -t kaji/works-with-heroku-1.0 ."

            }
         }
             stage("Docker deployement"){
              steps{
                 sh "docker run -d -p 8070:8080 kaji/works-with-heroku-1.0"

             }
             }

        
    }
}
