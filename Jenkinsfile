#!groovy

pipeline {
    agent any

    stages {
      stage('Build') {
          script {
              TAG = VersionNumber(versionNumberString: '${BUILD_DATE_FORMATTED, "yyyyMMdd"}-develop-${BUILDS_TODAY}')
              echo "Building..."
              sh "docker build -t $IMAGE:$TAG ."
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
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
                echo "build tag ${env.BUILD_TAG} and build number ${env.BUILD_NUMBER}"
                echo "build tag ${env.BUILD_DISPLAY_NAME} and job name ${env.JOB_NAME}"
            }
        }
    }
}
