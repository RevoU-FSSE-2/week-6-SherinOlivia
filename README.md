# Week 6 Assignment Overview

This week's assignment mainly focuses on familiarizing with Docker concept.
- Downloading & Installing Docker
- Creating Dockerfile
- Using Dockerfile to build the image
- Running the project inside the container

## Docker, Container, Image, and Dockerfile
Docker
:  a set of platform as a service (PaaS) products that use OS-level virtualization to deliver software in packages called containers, enabling developers to create, deploy, and run any application with ease.

Container
: A standardized unit of packaged software that has everything the software needs to run, including libraries, system tools, code and runtime.

Image
:  A read-only template/file containing a set of instructions for creating a container

Dockerfile
: A simple text file with a set of command or instruction that are executed successively to perform actions on the base image to create a new docker image.

## Docker and WSL Installation
![Docker-Website]()
1. To Install Docker, first head to [www.docker.com](https://www.docker.com/) and click on `Download`
2. Wait for the Installer to finish downloading and double-click on the file when finished
![Docker-Installer-Download]()
3. Wait for Docker to finish Unpacking and Installing
![Docker-Unpacking]()
![Docker-Installation]()
4. Restart your machine to finalize the installation
![Docker-Install-Finish]()
5. To use Docker, we need to install WSL (For Windows User), which can be done in any terminal by using the command: `wsl --update`
![WSL-Installation]()
7. Docker is successfully installed
![Docker-Successful-Installation]()
8. A glimpse into Docker Container
![Docker-Container]()

##Docker & WSL Installation Verification
![Docker-&-WSL-Installation-Verification]()

## Dockerizing an existing Node.js app 
<p>To Dockerize a node.js app means to put and run the app inside a <strong>container</strong>, and to do that, we need to build the <strong>image</strong>. But before we can build the image, we need a text file called <strong>Dockerfile</strong></p>

1. The first and foremost step is to always prepare the repository and the necessary files.
- To clone a repository to your local storage: `git clone your-repository-link`
- To move into the cloned repository: `cd your-cloned-repository-path`
- To create new folder: `mkdir your-folder-name`
- To create new file: `touch your-file-name`
- To open the project in VS Code: `code .`

2. Copy and paste your node.js app into the project folder
3. Create `package.json` file
[`package.json`: a file that contains descriptive and functional metadata about a project (in this case, an app), such as a name, version, and dependencies.]
![package.json-file]()
4. Create `Dockerfile`
- `FROM` defines from what image we want to build from (aka base image)
- `WORKDIR` creates a directory to hold the application code inside the image (essentially inside the container)
- `COPY` copies new files or directories from the source and adds them to the directory of the container at the path (`WORKDIR`)
[`COPY . .` means it will copy everything from the source to the directory defined in `WORKDIR`]
- `RUN` is an instruction that specifies commands to be run during image building, such commands include installing any application and packages or creating new files and directories needed.
- `EXPOSE` informs Docker that the container listens on the specified network ports at runtime.
- `CMD` defines the default executable of a Docker image
![Dockerfile]()
5. Build the image through the terminal by using the command: `docker build . -t your_image_name`
- the `.` in `docker build .` refers to current directory, meaning we are building the docker image using the dockerfile available in the current directory, 
- while the `-t` means we are naming the image
6. Run the image with the command: `docker run -p your-localport:app-port your_image_name:latest`
- `p` refers to port, we are defining the port we will use to access the port the app is running at. i.e `-p 3000:3001`
- `:latest` refers to the latest version of your image
[example: `docker run -p 3000:3001 week6_nodejs_app:latest`]
![Docker-Building-&-Running-Image]()

7. When finished, your image will have successfully created a container
![Docker-Successful-Container]()
8. Head to the localhost you specified earlier to see the result
![Docker-Succesful-Run]()

### Contact Me:

<img src="https://github.com/RevoU-FSSE-2/week-5-SherinOlivia/blob/main/assets/MDimgs/icons8-gmail.gif?raw=true" width="15px" background-color="none">[SOChronicle@gmail.com](mailto:SOChronicle@gmail.com) [Personal]

<img src="https://github.com/RevoU-FSSE-2/week-5-SherinOlivia/blob/main/assets/MDimgs/icons8-gmail.gif?raw=true" width="15px" background-color="none">[SOlivia@gmail.com](mailto:SOlivia198@gmail.com) [Work]

[![Roo-Discord](https://raw.githubusercontent.com/RevoU-FSSE-2/week-5-SherinOlivia/bddf1eca3ee3ad82db2f228095d01912bf9c3de6/assets/MDimgs/icons8-discord.svg)](https://discord.com/users/shxdxr#7539)[![Roo-Instagram](https://raw.githubusercontent.com/RevoU-FSSE-2/week-5-SherinOlivia/bddf1eca3ee3ad82db2f228095d01912bf9c3de6/assets/MDimgs/icons8-instagram.svg)](https://instagram.com/shxdxr?igshid=MzRlODBiNWFlZA==)[![Roo-LinkedIn](https://raw.githubusercontent.com/RevoU-FSSE-2/week-5-SherinOlivia/bddf1eca3ee3ad82db2f228095d01912bf9c3de6/assets/MDimgs/icons8-linkedin-circled.svg)](https://www.linkedin.com/in/sherin-olivia-07311127a/)