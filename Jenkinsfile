pipeline {
    
    agent any

    tools {
        maven 'maven3.9.4'
    }

    stages {
        
        // stage('Checkout') {
        //     steps {
        //         git branch: 'main' ,
        //         credentialsId: 'administrado-ms',
        //         url: 'https://github.com/SIAT-MPM/funcional-clasificacion-socioeconomico.git'
        //     }
        // }

        stage('compile') {
            steps {
                sh 'mvn clean compile -B -ntp -DskipTest'
            }
        }
        // stage('test') {
        //     steps {
        //         sh 'mvn test -B -ntp'
        //     }
        // }
        stage('Build') {
            steps {
                sh 'mvn package  -B -ntp -DskipTests'
                //sh 'docker rm -f id-calificacion'
                sh 'docker build -t adminserver:1.0.1 .'
                sh 'docker run --name mcsv-adminserver -d -p 9999:9999  --network spring adminserver:1.0.1'
            }
        }

        //stage('Deploy') {
        //    steps{
                //sh 'cp docker-compose.yml /home/workspace/'
        //    }   
           
        //}
    }
    
}
