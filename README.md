# GHW-December
Notes and resources for GHW December stream

## Setting up
1. Install [Git](https://git-scm.com/)
2. Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)
3. Create an account on [Docker Hub](https://hub.docker.com/)
   1. Login to Docker Desktop with your docker account 
   
## Enable Kuberenetes
There are several ways to run kubernetes locally on your machine. `Docker Desktop` is the easier way to get started 

>> Explore: Check out Kind, minikube and kubeadm which are also popular choice to run kubernetes locally

- Run Docker Desktop -> Settings -> Kubernetes -> Toggle `Enable Kubernetes` -> Check Kubernetes status at the bottom
   
![](https://i.imgur.com/oDYxGti.png)

- Open command terminal and run `kubectl get nodes` your output should look like:
```
kubectl get nodes
NAME             STATUS   ROLES           AGE     VERSION
docker-desktop   Ready    control-plane   5d11h   v1.25.2```

Hurray! You got your own Kubernetes cluster running! 🥳

