pipeline {
  agent { 
    label 'ci'
    docker 'debian:stable'
  }
  stages {
    stage('Build') {
      steps {
        sh "gem install bundler --no-rdoc --no-ri"
        sh "bundle install"
      }
    }
  }
}
