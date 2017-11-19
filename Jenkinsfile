pipeline {
    agent {
        docker 'tzenderman/docker-rvm'
    }
   
    stages {
        stage('Pre Build') { 
            steps { 
                sh '''
                rvm version
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
