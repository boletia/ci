pipeline {
    agent {
        docker 'ruby:2.3.3'
    }
   
    stages {
        stage('Pre Build') { 
            steps { 
                sh '''
                #!/bin/bash -x
                dpkg -l
                uname -a
                gpg
                rvm version
                whoami
                rvm install ruby-2.3.4
                rvm list
                rvm gemset list
                rvm --default use ruby-2.3.4
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
