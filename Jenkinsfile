pipeline {
    agent any  
    tools {
        maven 'mymaven'
    }

    stages {
        stage('clone') {
            steps {
                git url: 'https://github.com/Sachinm17/DevOpsClassCodes.git/'
            }
        }
        
        stage('compile') {
            steps {
                sh 'mvn compile'
            }
        }
        
        stage('code review') {
            steps {
                sh 'mvn -P matrics pmd:pmd'
            }
        }
        
        stage('unit test') {
            steps {
                sh 'mvn test'
            }
        }
        
        stage('matric check') {
            steps {
                sh 'mvn cobertura:cobertura -D cobertura.report.format=xml'
            }
        }
        
        stage('package') {
            steps {
                sh 'mvn package'
            }
        }
    }
}
