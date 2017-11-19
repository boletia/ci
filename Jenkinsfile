pipeline {
    agent { dockerfile true }
    stages {
        stage('Pre Build') { 
            steps {
                sh '''
                ls /home
                echo $USER
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
