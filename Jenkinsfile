pipeline {
    agent any

    stages {
        
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
        stage('Display Running Containers') {
            steps {
                sh 'docker ps'
            }
        }
    }
}
