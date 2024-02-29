pipeline {
    agent any

    stages {
        stage('Prep/Clean up'){
          steps{
            sh 'docker rm -f $(docker ps-aq)||tre'
          }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t myapp .'
            }
        }

        stage('Deploy NGINX') {
            steps {
                sh 'docker run -d -p 80:80 --name nginx nginx:latest'
            }
        }

        stage('Deploy Application') {
            steps {
                sh 'docker run -d --name myapp-container myapp'
            }
        }
    }

//     post {
//         always {
//             stage('Clean Up') {
//                 steps {
//                     sh 'docker stop nginx'
//                     sh 'docker rm nginx'
//                     sh 'docker stop myapp-container'
//                     sh 'docker rm myapp-container'
//                 }
//             }
//         }
//     }
// }