pipeline {
  agent { 
    label 'ci'
    docker 'debian:stable'
  }
  stages {
    stage('Pre Build') {
      steps {
        sh "gem install bundler --no-rdoc --no-ri"
        sh "bundle install"
      }
    }
    stage('Build') {
      steps {
      }
    }
    stage('Test') {        
    }
    stage('Deploy') {
    }
  }
}
