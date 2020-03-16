#!groovy

pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                script {
                    echo "Building..."
                    plistLocation = "FastlaneTest/Info.plist"
                    iosVersion = sh(script: '/usr/libexec/PlistBuddy -c "Print CFBundleShortVersionString" "' + "${plistLocation}" + '"', returnStdout: true).trim()
                    echo "Current iOS Version is ${iosVersion}"

                 }
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
            }
        }

        stage("Env Variables") {
            steps {
                echo "The build number is ${env.BUILD_NUMBER}"
                echo "You can also use \${BUILD_NUMBER} -> ${BUILD_NUMBER}"
                sh 'echo "I can access $BUILD_NUMBER in shell command as well."'
                sh "printenv"
            }
        }
    }
}
