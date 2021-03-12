pipeline {
    agent any
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
