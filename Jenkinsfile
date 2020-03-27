pipeline {
  agent any
  stages {
    stage('sayhi') {
      steps {
        git(changelog: true, url: 'https://github.com/BruceLEO1969/ks.git', branch: 'master', poll: true)
        echo 'Fuck it again...'
      }
    }
    stage("Changelog") {
        def changelogString = gitChangelog returnType: 'STRING',
        from: [type: 'REF', value: MR_TO_BRANCH],
        to: [type: 'REF', value: MR_FROM_BRANCH],
        template: getChangelogTemplateString(params)
        currentBuild.description = changelogString
    }
  }
}
