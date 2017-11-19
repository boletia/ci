pipeline {
    agent {
        docker 'airdock/rvm'
    }
   
    stages {
        stage('Pre Build') { 
            steps { 
                sh '''
                uname -a
                rvm version
                gem install rails
                rails new ciapp --database=postgresql; cd ciapp
                gem install bundler --no-rdoc --no-ri
                bundle install'
                rvm gemset list
               '''
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
