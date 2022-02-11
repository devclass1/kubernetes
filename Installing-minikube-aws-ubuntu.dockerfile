#Minikube - minikube is a tool that lets you run Kubernetes locally. minikube runs a single-node Kubernetes cluster on your personal computer (including Windows, macOS and Linux PCs) so that you can try out Kubernetes, or for daily development work.




#Installing minikube aws ubuntu - min-2vcpu/2GB RAM required
apt-get update
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubec
apt-get update &&  sudo apt-get install docker.io -y
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
minikube version
minikube start --vm-driver=none
apt install conntrack
minikube start --vm-driver=none
minikube version
kubectl run hello-minikube --image=gcr.io/google_containers/echoserver:1.4 --port=8080
#if get any error related to kubectl comand run once 
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin/kubectl

# Run app
kubectl apply -f https://k8s.io/examples/application/nginx-app.yaml
kubectl get service
curl 10.103.77.48
kubectl delete -f https://k8s.io/examples/application/nginx-app.yaml
#When load on your application grows or shrinks, use kubectl to scale your application. 
#For instance, to decrease the number of nginx replicas from 3 to 1, do:
kubectl scale deployment/my-nginx --replicas=1
#To have the system automatically choose the number of nginx replicas as needed, ranging from 1 to 3, do:
kubectl autoscale deployment/my-nginx --min=1 --max=3
#kubectl edit
kubectl edit deployment/my-nginx
#To update resource fields that cannot be updated once initialized, or you may want to make a recursive change immediately
kubectl replace -f https://k8s.io/examples/application/nginx/nginx-deployment.yaml --force
#You can check nginx via public-ip:<port-exposed/like-in-example-32469> in web browser

#Display detailed information about the Service
kubectl describe services my-nginx
kubectl describe services my-nginx-svc


#Delete a pod with minimal delay
kubectl delete pod my-nginx --now
#Delete all pods
kubectl delete pod --all


#To delete the Service
kubectl delete services my-nginx
kubectl delete services my-nginx-svc

#Check deployment
kubectl get deployment

#Delete deployment
kubectl delete deployment my-nginx


#Stop minikube
minikube stop

#Delete minikube
minikube delete
