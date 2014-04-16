Environment
===========

Sets up a development environment with vagrant

# What's inside
- Apache 
- PHP 5.3.10 (Pear modules: Phing, VersionControl_Git-0.4.4)
- XDebug 2.1.0
- MySql 5.5.35
 
# Dependencies
The only dependencies required for setting up an environment are [Vagrant](http://www.vagrantup.com/), and [Virtualbox](https://www.virtualbox.org/).

# Deploying the environment
Clone this repository, and run `vagrant up`. Once the environmnment is deployed and provisioned, the apache service is started and serves the contents of the `www` folder at `http://localhost:8181`. 

Inside the `www` folder is where you can begin development.
