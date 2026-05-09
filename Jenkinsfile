pipeline {

    agent any

    environment {
        DOCKER_IMAGE = "kjrashmi20/python-devops-app"
        IMAGE_TAG = "${BUILD_NUMBER}"
    }

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main',
                url: 'https://github.com/kjrashmi20/devops-platform-engineering.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh '''
                docker build -t $DOCKER_IMAGE:$IMAGE_TAG ./app
                '''
            }
        }

        stage('Push Docker Image') {
            steps {

                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-creds',
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_PASS'
                )]) {

                    sh '''
                    echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin

                    docker push $DOCKER_IMAGE:$IMAGE_TAG
                    '''
                }
            }
        }

        stage('Deploy to Kubernetes') {
            steps {

                sh '''
                sed -i "s|image:.*|image: $DOCKER_IMAGE:$IMAGE_TAG|g" kubernetes/deployment.yaml

                kubectl apply -f kubernetes/deployment.yaml
                kubectl apply -f kubernetes/service.yaml
                '''
            }
        }

        stage('Verify Deployment') {
            steps {

                sh '''
                kubectl rollout status deployment/python-devops-app

                kubectl get pods
                '''
            }
        }
    }
}
