pipeline {
    agent { dockerfile true }
    stages {
        stage('Pre Build') { 
            steps {
                sh '''
                ls /home
                gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
                \curl -sSL https://get.rvm.io | bash -s stable --rails
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
