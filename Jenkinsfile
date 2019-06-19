pipeline {                                                                                                 
    agent any                                                                                              
       stages {                                                                                            
        stage("initialize") {                                                                              
            steps {                                                                                        
              script {                                                                               
              withCredentials([usernamePassword(                                                           
                credentialsId: "dockerHubAccount",                                                         
                usernameVariable: "USERNAME",                                                              
                passwordVariable: "PASSWORD",                                                              
              )]) {                                                                                        
                sh "docker login -u $dockerUser -p $dockerPassword"                                        
                }                                                                                            
              } 
            }			
          }                                                                                                
        stage('build image and push to dockerHub') {                                                       
            steps {                                                                                        
                sh "cd Jumbo && docker image build --no-cache -t Jumbo:latest ."                           
                sh "docker image tag Jumbo:latest $dockerUser/student_app:latest"                       
                sh "docker image push $dockerUser/student_app:latest"                                   
            }                                                                                              
        }                                                                                                  
        stage('pull image and run image on container') {                                           
            steps {                                                                                        
                sh "docker pull $dockerUser/student_app:latest"                             
                sh "docker run -d --rm -p 5000:5000 --name MuscleMan $dockerUser/student_app:latest"     
                echo "MuscleMan Application started on port: 5000 using http"                             
            }                                                                                              
        }                                                                                                  
    }                                                                                                      
}    
