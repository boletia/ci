pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') { 
            steps {
                sh '''
                bundle update rack-test
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
