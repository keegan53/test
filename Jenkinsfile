pipeline {
  agent any
  stages {
    stage('Pipeline Stages'){
      steps {
        sh "ls"
            }
    }
    stage(‘second stage’){
      steps {
        sh “pwd”
      }
 }
    stage(‘third stage’){
      steps {
        sh “touch hello.txt”
      }
 }
    stage(‘second stage’){
      steps {
        sh “mv hello.txt newhello.text”
      }
 }
