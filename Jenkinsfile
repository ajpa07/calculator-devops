pipeline {
    agent any
    stages {
        stage('Build') { 
            steps {
              echo 'Building'
              nodejs('NodeJS'){
                sh 'npm install'
              } 
            }
        }
       stage('Build') { 
            steps {
              echo 'Testing'
              nodejs('NodeJS'){
                sh 'npm test'
              } 
            }
        }
    }
}
