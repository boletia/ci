pipeline {
    agent {
        docker 'airdock/rvm'
    }
   
    stages {
        stage('Pre Build') { 
            steps { 
                sh '''
                ruby --version
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
