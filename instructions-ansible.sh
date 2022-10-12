#configurar credenciales de AWS
#aws configure 

#Levantar plantilla de con los recursos a crear en CloudFormation
#aws cloudformation create-stack --stack-name ReactApp --template-body file://template-ansible.yaml

#Obtener Password
#ssh -i deploy.pem ec2-user@ec2-34-227-86-158.compute-1.amazonaws.com sudo cat /var/lib/jenkins/secrets/initialAdminPassword

#Eliminar stack
#aws cloudformation delete-stack --stack-name ReactApp

#Eliminar instancia
#aws opsworks delete-instance --region us-east-1 --instance-id 3a21cfac-4a1f-4ce2-a921-b2cfba6f7771


#Contruir imagen y subir a dockerhub

#sudo docker build -t calculator .
#sudo docker run -d -p 3000:3000 calculator
# sudo docker tag calculator edo2004/calculator:v1
# sudo docker push edo2004/calculator:v1