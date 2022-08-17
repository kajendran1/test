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
  -Dsonar.projectKey=test \
  -Dsonar.host.url=http://43.205.122.178:9000 \
  -Dsonar.login=sqp_6d07e4ce92efee322fcd7a2fa18113b82033506d'
            }
        }
         stage("build Docker image"){
            steps{
               sh "docker build -t abbas1/works-with-heroku-2.0 ."

            }
         }
             stage("Docker deployement"){
              steps{
                 sh "docker run -d -p 8082:8080 abbas1/works-with-heroku-2.0"

             }
             }

        
    }
}
