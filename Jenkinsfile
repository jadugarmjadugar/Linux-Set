pipeline{
    agent any
    tools {
        nodejs 'node'
    }
    options {
        buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '29', numToKeepStr: '2')
    }
    environment {
         variable1 = "karan"
    }
    parameters {
        choice choices: ['Karan', 'ABC', 'DEF', 'ABC2'], name: 'Name'
    }

    stages{
        stage('git clone'){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/jadugarmjadugar/Only-NodeJs-code.git']])
            }
        }
        stage('content'){
            steps{
                sh 'ls'
                sh "echo $variable1"
                sh "echo ${params.Name}"
            }
        }
        stage('build'){
            steps{
                sh 'npm install'
            }
        }
    }
}
