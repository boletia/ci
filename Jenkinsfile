pipeline {
    agent {
        docker 'debian:stable'
    }
   
    stages {
        stage('Pre Build') { 
            steps { 
                sh 'gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3'
                sh 'curl -sSL https://get.rvm.io | sudo bash -s stable'
                sh 'usermod -a -G rvm `whoami`'
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
