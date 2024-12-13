pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Pobierz kod źródłowy z GitHuba
                checkout scm
            }
        }
        stage('Build') {
            steps {
                // Kompilacja aplikacji
                sh 'echo "Building the application..."'
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                // Uruchamianie testów
                sh 'echo "Running tests..."'
                sh 'mvn install'
            }
        }
        stage('Deploy') {
            steps {
                // Symulacja wdrożenia
                sh 'echo "Deploying the application..."'
            }
        }
    }
}
