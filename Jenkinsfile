pipeline {
  agent any
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
      steps {
        build
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
