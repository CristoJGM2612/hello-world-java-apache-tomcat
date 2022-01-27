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
                sh 'docker run -d --rm -p 8082:80 hello-world-java-tomcat'
            }
        }
        stage('Test Integration') {
            steps {
                echo 'Testing app...'
                sh 'wget http://localhost:8082/app-web-demo'
            }
        }
    }
}
