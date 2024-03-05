sudo apt update
sudo apt install unzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
/usr/local/bin/aws configure
curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.29.0/2024-01-04/bin/linux/amd64/kubectl
chmod +x ./kubectl
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$HOME/bin:$PATH
echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc
kubectl version --client
ws eks update-kubeconfig --region eu-west-2 --name cluster
aws eks update-kubeconfig --region eu-west-2 --name cluster
kubectl get svc 
kubectl get nodes
mkdir k8s
cd k8s/
touch nginx-pod.yaml
cd
kubectl get nodes
kubectl apply -f nginx-pod.yaml
cd/k8s
ls
cd k8s
ls
kubectl apply -f nginx-pod.yaml
cd
code .
cd k8s
kubectl apply -f nginx-pod.yaml
kubectl exec -it nginx –sh
kubectl exec -it nginx -– sh
kubectl exec -it nginx -–sh
kubectl exec -it nginx
kubectl exec -it nginx -- /bin/bash
kubectl exec -it nginx - /bin/bash
kubectl exec -it nginx -- /bin/sh
kubectl delete pod 
nginx
kubectl apply -f nginx-service.yaml
kubectl delete po --all
kubectl delete svc --all
mkdir mysql && cd mysql
touch mysql-pod.yaml secret.yaml mysql-service.yaml
echo -n "password" | base64
kubectl apply -f mysql-pod.yaml
kubectl delete po --all
kubectl delete svc --all
cd
mkdir
mkdir lab4
cd lab4
git clone https://gitlab.com/Reece-Elder/devops-pythonfront-back-docker.git
cd devops-pythonfront-back-docker/
kubectl apply -f frontend.yaml
kubectl apply -f backend.yaml
cd backend/
kubectl apply -f backend.yaml
cd frontend
cd /lab4/devops-pythonfront-back-docker
cd 
cd /lab4/devops-pythonfront-back-docker
cd /lab4
cd lab4
cd devops-pythonfront-back-docker
cd frontend/
kubectl apply -f frontend.yaml
kubectl apply -f frontend-service.yaml
cd
cd lab4
cd devops-pythonfront-back-docker
cd backend/
kubectl apply -f backend-service.yaml
cd
kubectl get pods
kubectl get services
kubectl get services frontend-service
kubectl apply -f frontend-service.yaml
cd lab4
cd devops-pythonfront-back-docker
cd frontend/
kubectl apply -f frontend-service.yaml
kubectl get services
kubectl apply -f frontend-service.yaml
cd
cd lab4/
kubectl apply -f frontend-service.yaml
cd devops-pythonfront-back-docker/
kubectl apply -f frontend-service.yaml
kubectl get services
kubectl get pods
kubectl delete svc frontend-service
kubectl delete svc --all
kubectl apply -f frontend-service.yaml
kubectl apply -f backend-service.yaml
kubectl get services
kubectl delete svc --all
kubectl delete pod --all
kubectl apply -f frontend-service.yaml
kubectl apply -f backend-service.yaml
kubectl apply -f backend.yaml
kubectl apply -f frontend.yaml
kubectl get services
kubectl get po
kubectl delete pod --all
kubectl delete svc --all
kubectl apply -f frontend.yaml
kubectl apply -f backend.yaml
kubectl apply -f backend-service.yaml
kubectl apply -f frontend-service.yaml
kubectl get po
kubectl get services
kubectl delete svc --all
kubectl delete pod --all
