pipeline {
    agent any 
    agent { 
        label 'ci'
        docker 'debian:stable'
    }

    stages {
        stage('Pre Build') { 
            steps { 
                sh 'gem install bundler --no-rdoc --no-ri'
                sh 'bundle install'
            }
        }
        stage('Test'){
            steps {
                sh 'echo "Test"'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deploy"'
            }
        }
    }
}
