pipeline {
    agent {
        any {
            label 'poc-jenkins-docker'
        }
    }

    stages {
        stage('Build Docker Container'){
            steps {   
                sh '''
                   docker build -t ci .
                   docker run -u admin ci bundle update rack-test && bundle install
                '''
            }
        }
        stage('Test'){
            steps {
                sh 'docker run -u admin ci rspec spec'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deploy"'
            }
        }
    }

}
