pipeline {
    agent {
        docker 'cyberious/docker-jenkins-rvm'
    }
   
    stages {
        stage('Pre Build') { 
            steps { 
                sh '''
                #!/bin/bash -x
                dpkg -l
                uname -a
                rvm version
                rvm list
                rvm list known
                sudo rm /etc/rvmrc
                rvm install ruby-2.1
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
