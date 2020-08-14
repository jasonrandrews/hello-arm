# Simple Docker C example
A simple C program which prints the host architecture of the running container.

It shows how to use docker build to create images and run them.

Users are encouraged to build and run on Arm hardware!

## Requirements
To run the example make sure Docker is installed. The example is made for Linux.

A [Docker Hub](https://hub.docker.com/) accout is useful to save images. Have your Docker ID available.

## Usage instructions
Here are the steps to run the demo:

  1. After cloning, change directory to the example
     - ```cd c-hello-world```
  2. (optional) Login to your Docker Hub account
     - ```docker login```
  3. Run the build script to create the docker image
     - ```./build.sh```
  4. Use the run script to run the container 
     - ```./run.sh```
  5. (optional) Save the container to your docker hub account and use it on any machine
     - ``` docker tag c-hello-world jasonrandrews/c-hello-world```
     - ``` docker push jasonrandrews/c-hello-world```


