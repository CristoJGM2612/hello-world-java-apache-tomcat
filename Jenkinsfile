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
                sh 'docker build -t hello-world-java-tomcat .'
                sh 'docker run -d --rm -o 8090:80 hello-world-java-tomcat'
            }
        }
        stage('Test Integration') {
            steps {
                echo 'Testing app...'
                sh 'grep Cristo | wget http://localhost:8090/app-web-demo'
            }
        }
    }
}
