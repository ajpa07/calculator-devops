pipeline {
    agent any
    
    tools {nodejs "NodeJS"}
    
    environment {
            CI = 'true'
        }
    
    stages {
        stage('Installing dependencies') { 
            steps {
              echo 'Installing'
              sh 'npm install'
             
            }
        }
       stage('Testing') { 
            steps {
              echo 'Testing'
              sh 'npm test'
             
            }
        }
        stage('Build') { 
            steps {
              echo 'Building'
              sh 'npm run build'
             
            }
        }
        stage('Docker Image Build') { 
            steps {
              echo 'Building Image'
              sh 'docker build -t react-calculator .'
              sh 'docker run -d -p 8080:80 react-calculator'  
             
            }
        }
    }
}
