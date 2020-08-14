# Simple Docker flask example
A simple flask web app which prints the host information of the running container.

It shows how to use docker build to create images and run them.

Users are encouraged to build and run on Arm hardware!

## Requirements
To run the example make sure Docker is installed. The example is made for Linux. 

A [Docker Hub](https://hub.docker.com/) accout is usefule to save images. Have your Docker ID available.

## Usage instructions
Here are the steps to run the demo:

  1. After cloning, change directory to the example
     - ```cd flask-hello-world```
  2. (optional) Login to your Docker Hub account
     - ```docker login```
  3. Run the build script to create the docker image:w
  
     - ```./build.sh```
  4. Use the run script to run the container
     - ```./run.sh```
     - ```Open http://localhost:5000 in a browser```
  5. (optional) Save the container to your docker hub account and use it on any machine
     - ``` docker tag flask-hello-world jasonrandrews/flask-hello-world```
     - ``` docker push jasonrandrews/flask-hello-world```
  

