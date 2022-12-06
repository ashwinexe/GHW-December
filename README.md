# GHW-December
Notes and resources for GHW December stream

## Setting up
1. Install [Git](https://git-scm.com/)
2. Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)
3. Create an account on [Docker Hub](https://hub.docker.com/)
   1. Login to Docker Desktop with your docker account 
4. Clone this repo 
   1. https: `https://github.com/ashwinexe/GHW-December.git`
   2. ssh: `git@github.com:ashwinexe/GHW-December.git`
   
## Conterize your app
1. Check out the `Dockerfile` to understand what's happening
2. Login to your docker account in your shell `docker login`
3. Run `docker build -t <docker_username>/<image_name>:<version_number> .
4. It shoudl look like this:
```
   ➜  GHW-December git:(main) ✗ docker build -t ashwinexe/ghw:1.0 .
Sending build context to Docker daemon  9.639MB
Step 1/6 : FROM node:current-slim
 ---> b131f467b9ea
Step 2/6 : LABEL MAINTAINER="kumarashwin2603@gmail.com"
 ---> Running in ad644f733bb0
Removing intermediate container ad644f733bb0
 ---> 80536b85f226
Step 3/6 : COPY . /src
 ---> a0d5b1092b14
Step 4/6 : RUN cd /src; npm install
 ---> Running in 69961af002d6

up to date, audited 97 packages in 5s

12 packages are looking for funding
  run `npm fund` for details
Successfully built 1f2bfa5b0245
Successfully tagged ashwinexe/ghw:1.0
```

>> Notice the "." in the end is crucial, it tells docker that all the files in the local directory get compressed and sent to the Docker daemon.

5. Run your docker image with port exposed:
   1. `docker run -p 8080:8080 ashwinexe/ghw:1.0`
   2. Check localhost:8080 in your browser

## Enable Kuberenetes
There are several ways to run kubernetes locally on your machine. `Docker Desktop` is the easier way to get started 

>> Still curious? Check out Kind, minikube and kubeadm which are also popular choice to run kubernetes locally

- Run Docker Desktop -> Settings -> Kubernetes -> Toggle `Enable Kubernetes` -> Check Kubernetes status at the bottom
   
![](https://i.imgur.com/oDYxGti.png)

- Open command terminal and run `kubectl get nodes` your output should look like:
```
kubectl get nodes
NAME             STATUS   ROLES           AGE     VERSION
docker-desktop   Ready    control-plane   5d11h   v1.25.2
```

Hurray! You got your own Kubernetes cluster running! 🥳

## Resources
- https://nodejs.org/en/docs/guides/nodejs-docker-webapp/