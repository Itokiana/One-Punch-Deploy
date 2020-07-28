# One-Punch-Deploy v0.0.1

This is an project who help to deploy **ruby on application** easly. You specify your version of your environment and it install automatically for you with **CLI interaction**. It deploy your rails application with nginx using **reverse-proxy**.

There are the list of technologies who will be install:

 - **curl**
 - **Ruby**
 - **Rails**
 - **NodeJS**
 - **Yarn**
 - **PostgreSQL**
 - **Nginx**

# How it works?
## Clone the repository
First clone or copy your RoR project folder in your server.
Next, clone the repository in your server, use this cli:

    git clone https://github.com/Itokiana/One-Punch-Deploy.git

## Install your env
You specify your version of env with cli interaction and it install automatically for you. To do that, type this command in your directory:

    sudo ./install_env.sh

## Create role and database in postgreSQL
You must create role and database before to pass in the next. Just to that:

    sudo su - postgres
    createuser --pwprompt USER
    createdb -O USER DATABASE_NAME
    exit

## Launch config

To auto-config your server, just type this cli:

    sudo ./config.sh

> NB: this command, add all of the configuration to run your server

## What the next?

That's all, you can type you ip server like **http://x.x.x.x** in browser and enjoy it!

NB: You have some alias command-lines for some tasks who are installed automatically, such as:

- **rails-console:** To view rails console
- **db-migrate:** to migrate
- **rails-server-start:** to launch service for starting rails server
- **rails-server-stop:** to launch service for starting rails server
- **rails-server-status:** to view status of service
- **rails-log-renew:** to clean $PROJECT/log/production.log
- **rails-assets-precompile:** to launch rails assets:precompile
- **rails-view-log:** to view log with nano
- **MAJ-project:** to update project from your github repository

