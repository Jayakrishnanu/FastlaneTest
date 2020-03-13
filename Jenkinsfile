#!groovy

pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                APP_VERSION=$(/usr/libexec/PlistBuddy -c "Print :CFBundleShortVersionString" "path to your plist")
                echo APP_VERSION=$APP_VERSION > appversion.properties;
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
