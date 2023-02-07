# hello-arm

## Overview

This project demonstrates hello world style Docker examples which print platform information.

There are multiple examples created with different programming languges. 

The examples show that software development for Arm now covers cloud, desktop, and IoT. Containers provide the build once, run anywhere benefit across a variety of Arm platforms. It's also fun to see the output of each of the programs on various Arm platforms. 

For example, running the C example on my Pinebook Pro Arm laptop generates:

```console
Hello, architecture from uname is Linux buildkitsandbox 5.7.0-3-MANJARO-ARM #1 SMP Sun Jul 5 18:30:55 UTC 2020 aarch64 Linux
64-bit userspace
```

## Build and run 

First, you'll need to install Docker if you haven't done that already. You can
learn how to install Docker at http://docs.docker.com/engine/installation/.

Next, you need to build a Docker image. You can do this by running the
`./build.sh` command.

Finally, run the container to print the platform output. You can do this wth the
`./run.sh` command. Some examples require a browser to open a specific port to see the message. 

There is a README file for each example.

## Using AWS EC2 instances with Graviton processors

AWS is an easy way to get started on an Arm machine. The examples run on any size instance, even the smallest t4g.small EC2 instance.

To use the examples on AWS Graviton processors running Ubuntu Linux there is a simple ec2-setup.sh script which can be run to install Docker and setup ssh access.

