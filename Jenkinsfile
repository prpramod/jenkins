pipeline {
    agent any
    stages {
        stage('Clean Up') {
            steps {
                deleteDir()
            }
        }

        stage('Clone github repository') {
            steps {
                sh 'git clone https://github.com/jenkins-docs/simple-java-maven-app.git'
            }
        }

        stage('Build') {
            steps {
                dir('simple-java-maven-app.git')
                sh 'mvn clean install'
            }
        }
    }
}
