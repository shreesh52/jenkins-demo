pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'make'
            }
        }

        stage('Clean') {
            steps {
                sh 'make clean'
            }
        }
    }

    post {
        success {
            echo 'Build successful!'
        }

        failure {
            echo 'Build failed!'
        }
    }
}

