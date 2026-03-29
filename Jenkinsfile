pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/Nivasreddy3/DevOpsProject.git'
            }
        }

        stage('Install') {
            steps {
                sh 'cd app && npm install'
            }
        }

        stage('Lint') {
            steps {
                sh 'cd app && npm run lint'
            }
        }

        stage('Test') {
            steps {
                sh 'cd app && npm test'
            }
        }

        stage('Build') {
            steps {
                sh 'docker build -t myapp .'
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                docker stop myapp || true
                docker rm myapp || true
                docker run -d -p 3000:3000 --name myapp myapp
                '''
            }
        }
    }
}
