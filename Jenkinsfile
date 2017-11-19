pipeline {
    agent {
        docker 'airdock/rvm'
    }
   
    stages {
        stage('Pre Build') { 
            steps { 
                sh '''
                uname -a;sudo apt-get install rubygems build-essential
                rvm version
                rvm list
                rvm gemset list
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
