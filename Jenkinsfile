pipeline {
    agent {
        docker 'ruby:2.3.3'
    }
   
    stages {
        stage('Pre Build') { 
            steps { 
                sh '''
                #!/bin/bash -x
                dpkg -l
                uname -a
                export
                ruby --version
                cd
                pwd
                ls /
                sudo -s
                useradd admin -s /bin/bash
                ls /home
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
