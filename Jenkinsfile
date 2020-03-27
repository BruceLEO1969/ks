pipeline {
  agent any
  options {
      skipDefaultCheckout()
      ansiColor('xterm')
      retry(1)
  }

  triggers {
            pollSCM('H * * * *')
  }

  environment {
      LANG = "C.UTF-8"
      LC_ALL = "en_US.UTF-8"
      LANGUAGE = "en_US.UTF-8"
      UNITTESTING_STATE = 'false'
      TESTING_STATE = 'false'
  }
  stages {
    stage('Checkout SCM') {
      steps {
        git(changelog: true, url: 'https://github.com/BruceLEO1969/ks.git', branch: 'master', poll: true)
        echo 'Git checkout...'
      }
    }
    stage("Build") {
      when {
        not {
          changelog '.*^\\[ci skip\\] .+$'
        }
      }
      environment {
          PATH = "${PATH}:/var/lib/jenkins/.gem/ruby/2.7.0/bin"
      }
      steps {
        //build()
        echo "Dev branch - Build"
        sh 'bundle update --bundler'
        sh 'bundle install'
        sh 'bundle exec fastlane build'
      }
    }
  }
}


def build() {
    echo "Dev branch - Build"
    sh 'bundle install'
    sh 'bundle update'
    sh 'bundle exec fastlane build'
}
