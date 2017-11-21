pipeline {
    agent { dockerfile true }
    stages {
        stage('Test'){
            steps {
                sh 'rspec spec'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deploy"'
            }
        }
    }

}
