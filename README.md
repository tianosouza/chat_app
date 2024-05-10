# Get Starting

  ## Ruby on Rails and Docker

  Build RoR 7 application with Docker for the first time.

  In this lesson you will be able to view the configuration made for creating Ruby on Rails 7 applications using Docker. Before continuing, make sure you have Docker installed on your computer.

  Observations.

  If you are using Windows, I recommend installing WSL2 so that the process does not take too long. If you use Linux, the container creation process will be much faster. In this link https://learn.microsoft.com/es-es/windows/wsl/install you will find more information about how to install WSL2 on Windows.

  Development.

  1. Create a folder and name it whatever you like. Inside the folder, create a file called Dockerfile and paste the following configuration. In the WORKDIR line, enter the name you want. This directory will be created in the container.

    
      FROM ruby:3.0.4

      WORKDIR /myapp

      RUN apt-get update -qq && apt-get install -y nodejs postgresql-client imagemagick libvips

      RUN gem install rails
   
  
  2. Install the VSCode Dev Containers extension.

  3. Type ctrl + shift + p and select the option Rebuild without cache and reopen in container.

  4. The container will begin to be created, so you will have to wait until it finishes.

  5. Open a new terminal, and it will open inside the container, but not on your local computer. Build a Ruby on Rails app using the rails new myapp command.

  You can add the database using the command rails new myapp -d=postgresql

  to be continued ....
