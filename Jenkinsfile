pipeline {
    agent {
        docker ' tzenderman/docker-rvm'
    }
   
    stages {
        stage('Pre Build') { 
            steps { 
                sh '''
                ruby --version
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
