This is the Document for 4th milestone;

Docker is used for Containerization, it packages an application and its dependencies together in a container. It allows our application to run smoothly irrespective of the changes in environment. 

Docker file is run by typing docker-compose up

What it does:
- it sets the node environment
- sets the work directory
- install the packages and libraries
- sets the files in the directory
- expose the port to run the server
- run the server


What's Docker yaml file:
- its the configuration file docker uses to set its environment
- we've specified our mongodb url and path as well as nodejs


For the requirement github actions is added which builds the docker image from Docker file as soon as code is pushed on github and sets the name according to the repo

-   When code is pushed it automatically runs 
-   It checks out the repo
-   builds it on ubuntu-latest
-   build the docker image from using Docker file present in the directory
- 1.docker login 2. docker build 3. docker push
- view the build on docker hub