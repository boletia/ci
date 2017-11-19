pipeline {
    agent { dockerfile true }
    stages {
        stage('Pre Build') { 
            steps {
                sh '''
                ls /home
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
