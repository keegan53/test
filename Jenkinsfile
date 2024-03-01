pipeline {
    agent any

    stages {

        stage('Set Up') {
            steps {
                sh 'docker rm -f $(docker ps -aq) || true'
                sh 'docker network create mynetwork || true'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t myapp .'
                sh 'docker build -t mynginx -f Dockerfile.nginx .'
            }
        }
        
        stage('Deploy Application') {
            steps {
                sh 'docker run -d --name flask-app --network mynetwork myapp'
            }
        }

        stage('Deploy NGINX') {
            steps {
                sh 'docker run -d -p 80:80 --network mynetwork --name nginx mynginx'
            }
        }

        stage('Display Running Containers') {
            steps {
                sh 'docker ps'
            }
        }
    }
}
