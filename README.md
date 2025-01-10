# DockerDemo

A **.NET 8** minimal Web API demonstrating how to **containerize** an application with **Docker**. This project has a single endpoint `/api/hello` that returns a JSON response. It’s ideal for learning Docker basics, pushing images to **Azure Container Registry**, and deploying to **Azure App Service**.

## Overview

**DockerDemo** showcases:

- A **.NET 8** Web API project with one minimal endpoint.
- A **Dockerfile** using a multi-stage build (SDK for build, ASP.NET runtime for final image).
- How to run the container locally (`docker run -p 8080:80`).

## Features

- **Minimal** Web API returning JSON: `{"message":"Hello World from DockerDemo!"}`
- **Dockerized** with a multi-stage Dockerfile.
- **Easy** local testing: `docker run -p 8080:80 dockerdemo`
- **Scalable** deployment options to Azure (ACR, App Service, AKS, etc.).

## Prerequisites

- **.NET 8 SDK**
- **Docker Desktop** (latest stable version)
- (Optional) **Azure CLI** for container registry and App Service deployment
