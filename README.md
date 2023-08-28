# Docker Crash Course

1. What is Docker
    1. Docker is a virtualization Software developed to simply the process of developing, deploying and managing applications. It does this by using two things namely, image and container
2. Docker Vs VM
    1. Docker virtualizes the application layer, meaning it doesn’t have its own kernel
    2. Where as a VM virtualizes the whole OS including the kernel.
    3. So basically VM creates a completely brand new OS with its own kernel on top of the native  OS. Where as docker uses the existing kernel and only creates it own application layer.
    ![docker-vs-vm](/images/docker-vs-vm.png)
        - Image referenced from [here](https://media.geeksforgeeks.org/wp-content/uploads/20230109130229/Docker-vs-VM.png)
3. What is an Image
    1. An Image is a template that is used to spin up containers
        1. Ex: Ubuntu, Redis
4. What is Container
    1. A container is a running instance of an image. It is an environment in which the images run.
5. Image vs Container
    1. Image can be thought of as the application and a container as an environment in which the image runs. The container has all the configuration files, dependencies and other necessary parts for the application to run.
6. Registry
    1. A Docker registry stores the docker images
        1. Docker Hub is a public registry and that is where docker looks for images by default
7. We can create our own images by defining a file called the DockerFile
8. What happens inside of docker
    ![docker-core](/images/docker-core.png)
    1. From a client system a call is made saying something like docker pull, that request is send to the docker daemon, which inturn goes to the docker registry and searches for that image and downloads that to the system.
    2. So we execute all of our instructions or commands inside of a software called the docker client. The client talks to the docker daemon, which does all the operations.
9. In order to get the docker daemon and docker client we can use a piece of software called the docker desktop, which packages both of those into a single application for us to use in our system.
10. Basic Commands
    1. docker ps
        1. Lists the running  containers
            1. docker ps -a
            2. Lists all the running as well as stopped containers
    2. docker pull <Image Name>
        1. Pulls/Downloads an image to system
    3. docker start <Container Id>
        1. Starts an existing docker container
    4. docker run <Image Name>
        1. Pulls and starts the container
            1. docker run -d <Image Name>
                1. Run the container in detached mode
        2. docker run redis:4.0
        3. docker run —name redis redis:4.0
    5. docker stop <Container Id>
        1. Stops a running container
    6. docker run -p5400:6379 redis
        1. docker run -p<Host port>:<Container Source Port> <Image Name>
    7. docker images
11. Debugging inside container
    1. docker logs <container Id>
    2. docker exec -it <Container Id> /bin/bash
12. Docker File
    1. FROM
    2. COPY
    3. WORKDIR
    4. RUN
    5. CMD
    6. .dockerignore
    7. docker build -t <Image Name> .
    