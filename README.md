# DevOps Platform Engineering Project

## Overview

This project demonstrates an end-to-end production-style DevOps platform setup on AWS using modern infrastructure, automation, CI/CD, containerization, and Kubernetes orchestration practices.

The platform includes:

* Terraform for infrastructure provisioning
* Ansible for configuration management
* Docker for containerization
* Kubernetes for orchestration
* Jenkins for CI/CD automation
* Docker Hub integration
* Secure credential management practices

---

# Architecture

```text
Developer Pushes Code
          ↓
       GitHub
          ↓
       Jenkins
          ↓
Docker Image Build & Push
          ↓
      Docker Hub
          ↓
   Kubernetes Deployment
          ↓
    Kubernetes Cluster
```

---

# Tech Stack

| Category                 | Technology |
| ------------------------ | ---------- |
| Cloud                    | AWS EC2    |
| IaC                      | Terraform  |
| Configuration Management | Ansible    |
| CI/CD                    | Jenkins    |
| Containerization         | Docker     |
| Orchestration            | Kubernetes |
| Source Control           | GitHub     |

---

# Infrastructure

The setup includes:

* Jenkins Server
* Kubernetes Master Node
* Kubernetes Worker Node

All components were deployed within the same VPC using private networking and controlled Security Group access.

---

# CI/CD Workflow

```text
Code Change
    ↓
Git Push
    ↓
Jenkins Pipeline
    ↓
Docker Build
    ↓
Docker Hub Push
    ↓
Kubernetes Deployment
```

## Jenkins Pipeline Stages

1. Checkout Code
2. Build Docker Image
3. Push Image to Docker Hub
4. Deploy to Kubernetes
5. Verify Deployment

---

# Kubernetes Features

* Multi-replica deployment
* Rolling updates
* Readiness & liveness probes
* CPU and memory limits
* NodePort service exposure

---

# Project Structure

```text
.
├── ansible/
├── app/
├── kubernetes/
├── terraform/
├── Jenkinsfile
└── README.md
```

---

# Key Learnings

This project provided practical exposure to:

* Infrastructure provisioning with Terraform
* Configuration management using Ansible
* Kubernetes deployment workflows
* CI/CD automation with Jenkins
* Docker image lifecycle management
* Secure credential handling
* Cloud networking and Security Groups
* Infrastructure troubleshooting and debugging

One of the biggest learnings from this project was understanding how networking, CI/CD systems, Kubernetes, and infrastructure components integrate together in real-world environments.

---

# Challenges Faced

* Cross-VPC Kubernetes API connectivity issues
* Security Group and private networking troubleshooting
* Kubernetes kubeconfig configuration
* Docker authentication within Jenkins pipeline
* Internal control plane communication setup

These troubleshooting scenarios significantly improved practical infrastructure debugging understanding.

---

# Future Improvements

Planned enhancements:

* Prometheus & Grafana monitoring
* Centralized logging stack
* NGINX Ingress Controller
* HTTPS/TLS setup
* GitOps implementation
* Kubernetes RBAC

---

# Run Application

```bash
git clone https://github.com/kjrashmi20/devops-platform-engineering.git
cd devops-platform-engineering

kubectl apply -f kubernetes/deployment.yaml
kubectl apply -f kubernetes/service.yaml
```

---

