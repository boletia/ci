pipeline {
    agent any
    stages {
        stage('Build Docker Container'){
            steps {   
                sh 'docker build -t ci .'
                sh 'docker run -tiu admin ci bash'
            }
        }
        stage('Test'){
            steps {
                sh 'docker run -tiu admin ci rspec spec'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deploy"'
            }
        }
    }

}
