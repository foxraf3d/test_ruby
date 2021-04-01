pipeline{
    agent any
    stages{
        stage('Run Tests Android'){
            steps{
                sh "cucumber -p math_op PLATFORM_NAME='android'"
            }
        }
        stage('Run Tests iOS'){
            steps{
                sh "cucumber -p math_op PLATFORM_NAME='ios'"
            }
        }
    }
}