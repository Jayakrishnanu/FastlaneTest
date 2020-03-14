#!groovy

pipeline {
    agent any

    stages {
      stage('Build') {
          steps {
              echo "BUILD_DISPLAY_NAME" :: $BUILD_DISPLAY_NAME
              echo "JOB_NAME" :: $JOB_NAME
              echo "JOB_BASE_NAME" :: $JOB_BASE_NAME
              echo "BUILD_TAG" :: $BUILD_TAG
              echo "EXECUTOR_NUMBER" :: $EXECUTOR_NUMBER
              echo "NODE_NAME" :: $NODE_NAME
              echo "NODE_LABELS" :: $NODE_LABELS
              echo "WORKSPACE" :: $WORKSPACE
              echo "JENKINS_HOME" :: $JENKINS_HOME
              echo "JENKINS_URL" :: $JENKINS_URL
              echo "BUILD_URL" ::$BUILD_URL
              echo "JOB_URL" :: $JOB_URL
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
