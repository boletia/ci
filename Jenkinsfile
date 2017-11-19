pipeline {
    agent 'docker:debian'
   
    stages {
        stage('Pre Build') { 
            steps { 
                sh 'gem install rails'
                sh 'rails new ciapp --database=postgresql; cd ciapp'
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
