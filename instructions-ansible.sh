# Crar imagen docker y suborla a dockerhub // desde la ruta del proyecto
sudo docker build -t first-app .
sudo docker run -d -p 3000:3000 first-app
sudo docker tag first-app edo2004/first-app:v1
sudo docker push edo2004/first-app:v1

#configurar credenciales de AWS
aws configure 

#Levantar plantilla de con los recursos a crear en CloudFormation
aws cloudformation create-stack --stack-name ReactApp --template-body file://template-ansible.yaml

#Eliminar stack
#aws cloudformation delete-stack --stack-name ReactApp


