pipeline {
    agent {
        docker 'airdock/rvm'
    }
   
    stages {
        stage('Pre Build') { 
            steps { 
                sh '''
                . $(/home/RVM_USER/.rvm/bin/rvm env 2.3.4 --path)
                uname -a
                rvm version
                rvm list
                rvm gemset list
                rvm --default use 2.3.4
                rvm gemset create ci
                rvm gemset use ci
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
