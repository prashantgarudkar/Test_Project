pipeline {
    agent any  // Use any available agent/worker for the job

    triggers {
        // This will trigger the job whenever there is a commit to the repository
        pollSCM('* * * * *')  // Poll SCM every minute (adjust as necessary)
        // Alternatively, if you're using GitHub, Bitbucket, or GitLab, you can set up webhook triggers
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the latest code from the repository
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                // Replace with your actual build commands (e.g., for Java, Node.js, etc.)
                echo 'Building the project...'
                sh 'make build'  // Example build command, modify as needed
            }
        }

        stage('Test') {
            steps {
                // Replace with your actual test commands
                echo 'Running tests...'
                sh 'make test'  // Example test command, modify as needed
            }
        }

        stage('Deploy') {
            steps {
                // Replace with your actual deployment commands
                echo 'Deploying the project...'
                sh 'make deploy'  // Example deploy command, modify as needed
            }
        }
    }

    post {
        success {
            echo 'Build succeeded!'
        }

        failure {
            echo 'Build failed!'
        }

        always {
            echo 'This will always run after the build finishes.'
        }
    }
}
