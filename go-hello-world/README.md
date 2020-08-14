# Simple Docker Go example
A simple Go program which prints the host architecture of the running container.

It shows how to use docker build to create images and run them.

Users are encouraged to build and run on Arm hardware!

## Requirements
To run the example make sure Docker is installed. The example is made for Linux.

A [Docker Hub](https://hub.docker.com/) accout is useful to save images. Have your Docker ID available.

## Usage instructions
Here are the steps to run the demo:

  1. After cloning, change directory to the example
     - ```cd go-hello-world```
  2. (optional) Login to your Docker Hub account
     - ```docker login```
  3. Run the build script to create the docker image
     - ```./build.sh```
  4. Use the run script to run the container 
     - ```./run.sh```
  5. (optional) Save the container to your docker hub account and use it on any machine
     - ``` docker tag go-hello-world jasonrandrews/go-hello-world```
     - ``` docker push jasonrandrews/go-hello-world```


