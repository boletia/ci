pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') { 
            steps {
                sh '''
                bundle install
                '''
            }
        }
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
