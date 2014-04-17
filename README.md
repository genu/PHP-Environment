# Environment

Sets up a PHP Stack development environment using vagrant for quick environment setup and configuration. 

## What's inside
- Apache 
- PHP 5.3.10 (Pear modules: Phing, VersionControl_Git-0.4.4)
- PHPMyAdmin
- XDebug 2.1.0
- MySql 5.5.35
 
## Dependencies
The only dependencies required for setting up an environment are [Vagrant](http://www.vagrantup.com/), and [Virtualbox](https://www.virtualbox.org/).

## Deploying the environment
Clone this repository, and run `vagrant up`. Once the environmnment is deployed and provisioned, the apache service is started and serves the contents of the `www` folder at `http://localhost:8181`. PhpMyAdmin can be accessed at `http://localhost:8181/phpmyadmin`.

## Folder Structure
The `www` folder is the server root.
The `project` folder is the development working directory of the php project. 

## Workflow
1. Clone a PHP project into the `project` folder
2. Start the development environment with `vagrant up`
3. SSH into the machine using `vagrant ssh`
4. Navigate to '/var/project' (This is your project's working directory)
5. Run any [Phing](http://www.phing.info/) build task for the project.
6. (Optional) To preview a built project, move the build files into the `www` folder

**NOTE**

The project may optionally include a task to automatically build the project into the `www` folder and provision the specific project in the environment.

## Contributing
The goal of the project is to not cater to any specific Project, but rather establish an effective workflow for deploying a development environmeny.

If you can improve this workflow, submit a pull request. 