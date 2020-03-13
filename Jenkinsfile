#!groovy

pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                export VERSION='defaults read ${INFO_PLIST} CFBundleVersionString'
                sh 'echo VERSION=$VERSION > version.properties'
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
}
