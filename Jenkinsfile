#!groovy

pipeline {
    agent any

    parameters {
        string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')

        text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')

        booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')

        choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')

        password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
    }

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

        stage('Example') {
            steps {
                echo "Hello ${params.PERSON}"

                echo "Biography: ${params.BIOGRAPHY}"

                echo "Toggle: ${params.TOGGLE}"

                echo "Choice: ${params.CHOICE}"

                echo "Password: ${params.PASSWORD}"

                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"

                echo "build tag ${env.BUILD_TAG} and build number ${env.BUILD_NUMBER}"
                
                echo "build tag ${env.BUILD_DISPLAY_NAME} and job name ${env.JOB_NAME}"
            }
        }
    }
    post {
        always {
            echo 'I will always say Hello again!'
        }
    }
}
