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
                sh "cd Jumbo && docker image build --no-cache -t jumbo:$BUILD_NUMBER ."                           
                sh "docker image tag jumbo:$BUILD_NUMBER $dockerUser/student_app:$BUILD_NUMBER"                       
                sh "docker image push $dockerUser/student_app:$BUILD_NUMBER"                                   
            }                                                                                              
        }                                                                                                  
        stage('pull image and run image on container') {                                           
            steps {                                                                                        
                sh "docker pull $dockerUser/student_app:$BUILD_NUMBER"                             
                sh "docker run -d --rm -p 5000:5000 --name MuscleMan $dockerUser/student_app:$BUILD_NUMBER"     
                echo "MuscleMan Application started on port: 5000 using http"                             
            }                                                                                              
        }
        stage('Test launched Application') {                                           
            steps {                                                                                                                    
                sh "./muscle_test.sh"     
            }                                                                                              
        }
        stage('Deploy stack') {                                           
            steps {    			
                sh "cd student_app_service && docker stack deploy -c docker-compose-stack.yml student_app"		   
                echo "student_app services started successfully"                            
            }                                                                                              
        }                                          
    }                                                                                                      
}
