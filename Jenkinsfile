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
                rvm list
                rvm gemset list
                rvm gemset list
                rvm install ruby-2.3.3
                rvm gemset --create use ruby-2.3.4@ci
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
