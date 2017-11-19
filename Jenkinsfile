pipeline {
    agent {
        docker 'instructure/rvm'
    }
   
    stages {
        stage('Pre Build') { 
            steps { 
                sh '''
                ruby -v
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
