#!groovy
  stages {
      stage('Build') {
          steps {
            script{
              def run = build 'quality-freestyle'
              echo "${run.buildVariables}"
            }

          }
      }

      stage("Env variables") {
          steps {
            sh "printenv"
          }
        }

      stage('Test') {
            steps {
                echo 'Testing..'
            }
        }

      stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
    post {
        always {
            echo 'I will always say Hello again!'
        }
    }
}
