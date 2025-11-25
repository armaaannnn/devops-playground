
# DevOps Playground – Docker + Linux Basics
This project demonstrates creating a Docker image with basic Linux command utilities, running Linux commands inside a container using a script, and pushing the image to Docker Hub.
It also includes documentation of DevOps concepts and the step-by-step workflow used to complete the assignment.

# Five DevOps Concepts
1. Containerization

Packaging applications with all dependencies so they run consistently across environments.
Docker is the most popular container platform.

2. CI/CD

Continuous Integration & Continuous Delivery automate building, testing, and deploying software so teams can deliver updates faster and more reliably.

3. Infrastructure as Code (IaC)

Managing infrastructure using code (Terraform, Ansible, CloudFormation) to ensure consistency and avoid manual configuration.

4. Monitoring & Logging

Tracking system metrics and logs (Prometheus, Grafana, ELK) to detect issues, maintain uptime, and debug production problems.

5. Version Control

Using Git to track changes, collaborate, review code, and push it to platforms like GitHub for deployment or DevOps pipelines.


# How This Assignment Was Completed

Below are all the exact steps followed to build, test, and publish the Docker image — including the real Docker and Git commands used.

Step 1 — Create project folder

mkdir devops-playground
cd devops-playground

Created these files inside:
Dockerfile
demo-commands.sh
README.md

Step 2 — Write the Dockerfile

The Dockerfile installs essential Linux tools (curl, wget, git, iproute2, etc.), creates a non-root user, and copies the shell script.

Step 3 — Write demo-commands.sh

This script prints system information using basic Linux commands like:

whoami

pwd

ls -lah

df -h

free -h

ps aux

Step 4 — Build the Docker image
docker build -t devops-playground .

Step 5 — Run the container

Interactive mode:
docker run -it devops-playground

Inside the container:
/usr/local/bin/demo-commands.sh

Step 6 — Initialize Git repository
git init
git add .
git commit -m "Initial commit - DevOps Docker assignment"

Step 7 — Connect to GitHub and push code
git branch -M main
git remote add origin https://github.com/armaaannnn/devops-playground.git
git push -u origin main

Step 8 — Tag and Push to Docker Hub

Logged in:
docker login


Tag the image:
docker tag devops-playground armaan7/devops-playground:latest


Push the image:
docker push armaan7/devops-playground:latest

# How This Assignment Helped Me Learn DevOps
✔ Docker

Writing Dockerfiles

Installing Linux tools

Creating users

Running containers

Publishing images

These are core DevOps skills.

✔ Linux

Used essential commands like:

ls

df

free

ps

pwd

These are required for server monitoring and debugging.

✔ Git & GitHub

Creating repos

Committing code

Pushing to remote

Version control is mandatory in all DevOps workflows.

✔ DevOps Concepts

This project mirrors real DevOps tasks:

Infrastructure setup (Dockerfile)

Automation (script)

Documentation (README)

Artifact publishing (Docker Hub)