pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/your-username/your-repo.git'
            }
        }
        stage('Build') {
            steps {
                // Add build steps (e.g., Maven, Gradle, npm)
                sh 'mvn clean install'
            }
        }
        stage('Test') {
            steps {
                // Run your tests
                sh 'mvn test'
            }
            post {
                always {
                    junit '**/target/surefire-reports/*.xml'
                }
            }
        }
        stage('Deploy') {
            steps {
                // Deployment steps (e.g., Docker, Kubernetes, AWS)
                sh 'echo "Deploying to production..."'
            }
        }
    }
}
