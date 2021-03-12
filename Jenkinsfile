pipeline {
    agent any
    
    tools {nodejs "NodeJS"}
    
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
