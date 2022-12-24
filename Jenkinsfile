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
    }
}
