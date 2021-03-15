pipeline {
    agent any
    
    tools {nodejs "NodeJS"}
    
    environment {
            CI = 'true'
            image_name = ''
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
              sh 'docker tag react-calculator ajpa/calculator:react-calculator'  
              
            }
        }
        
        stage('Push Image Docker Hub') { 
            steps {
              echo 'Pushing Image'
              withCredentials([string(credentialsId: 'DOCKER_HUB_PASSWORD', variable: 'PASSWORD')]) {
                  sh 'docker login -u ajpa -p $PASSWORD'
              }
              sh 'docker push ajpa/calculator:react-calculator' 
         
            }
        }
        /*
        stage('Pull docker image with ansible') { 
            steps {
              echo 'Pull Image'
              script{
                  ansiblePlaybook becomeUser: null, colorized: true, disableHostKeyChecking: true, installation: 'Ansible', inventory: 'ansible/inventory', playbook: 'ansible/deploy.yml', sudoUser: null
                }
          
         
            }
        }
    */    
    }
    
}
