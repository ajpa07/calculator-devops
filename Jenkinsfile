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
    }
}
