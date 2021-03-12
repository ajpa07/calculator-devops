pipeline {
    agent any
    
    tools {nodejs "NodeJS"}
    
    environment {
            CI = 'true'
        }
    
    stages {
        stage('Build') { 
            steps {
              echo 'Building'
              sh 'npm install'
             
            }
        }
       stage('Testing') { 
            steps {
              echo 'Testing'
              sh 'npm test'
             
            }
        }
    }
}
