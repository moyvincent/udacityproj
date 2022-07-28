[![CircleCI](https://dl.circleci.com/status-badge/img/gh/moyvincent/udacityproj/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/moyvincent/udacityproj/tree/master)

## Project Overview

This project sets up and configure Kubernetes locally and containarising a flask app that predicts housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on.

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
    - Complete a Docker file
    - Select a base image usng FROM
    - Specify a Working directory
    - Copy the app.py source code to that directory
    - Install any dependencies in requirements.txt (do not delete the commented # hadolint ignore statement).
    - Expose a port when the container is created; port 80 is standard.
    - Specify that the app runs at container launch.
    - run the `make lint` 
* Setup and Configure Kubernetes locally
    - Get a VirtualBox and install minikube 
    - start minikube
    
* Create Flask app in Container
    - Define a dockerpath which will be “/path”, this should be the same name as your uploaded repository (the same as in upload_docker.sh)
    
* Run via kubectl
    - Run the docker container with kubectl; you’ll have to specify the container and the port
    - List the kubernetes pods using `kubectl get pods`
    - Forward the container port to a host port, using the same ports as before
