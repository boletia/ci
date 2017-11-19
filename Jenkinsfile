pipeline {
    agent {
        docker 'debian:stable'
    }
   
    stages {
        stage('Pre Build') { 
            steps { 
                sh '''
                uname -a
                gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
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
