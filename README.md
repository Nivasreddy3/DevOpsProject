#DevOps Pipeline Project

##Overview
This project demonstrates a basic DevOps pipeline using:
- Jenkins (CI/CD)
- Docker (Containerization)
- Terraform (Infrastructure as Code)

---

##Project Structure

- app/ → Node.js application
- Dockerfile → Container setup
- Jenkinsfile → CI/CD pipeline
- terraform/ → Infrastructure setup

---

##CI/CD Pipeline (Jenkins)

Stages:
1. Checkout code from GitHub
2. Install dependencies
3. Run lint
4. Run tests
5. Build Docker image
6. Deploy container

---

##Docker

Build image:
docker build -t myapp .

Run container:
docker run -d -p 3000:3000 myapp

---

##Terraform

Commands:
cd terraform
terraform init
terraform apply

Creates:
- EC2 instance
- Security group (port 3000)

---

##How to Run

1. Push code to GitHub
2. Connect repo to Jenkins
3. Run pipeline
4. Access app:
http://<EC2-IP>:3000
