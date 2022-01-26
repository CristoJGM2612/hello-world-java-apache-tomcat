pipeline {
    agent any

    stages {
        stage('Test Junit') {
            steps {
                sh 'mvn clean test'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -it --rm tomcat:9.0'
            }
        }
        stage('Test Integration') {
            steps {
                echo 'si'
            }
        }
    }
}