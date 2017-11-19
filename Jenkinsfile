pipeline {
    agent {
        dockerfile true
    }
   
    stages {
        stage('Pre Build') { 
            steps { 
                sh '''
                echo $USER
                sudo groupadd docker
                sudo gpasswd -a $USER docker
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
