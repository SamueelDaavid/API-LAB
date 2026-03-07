📦 Azure Cloud Lab – API + Terraform + CI/CD

📖 Overview

Este projeto demonstra um pipeline completo de infraestrutura e deploy na nuvem, utilizando:
```
API em Python
Infraestrutura como código com Terraform
CI/CD com GitHub Actions
Deploy automático na Microsoft Azure
```
O objetivo é simular um ambiente real de DevOps / Cloud Engineering.

🏗 Arquitetura

Componentes criados automaticamente:
```
Resource Group
App Service Plan
App Service (API)
Azure SQL Database
CI/CD Pipeline
```
Fluxo:
```
Developer → GitHub Push
          ↓
   GitHub Actions
          ↓
      Terraform
          ↓
Azure Infrastructure
          ↓
API Deploy + Database
```
🚀 Tecnologias utilizadas:
```
Python
Docker
Terraform
GitHub Actions
Microsoft Azure
```
⚙️ CI/CD Pipeline

O pipeline executa automaticamente:
```
1️⃣ terraform init
2️⃣ terraform fmt
3️⃣ terraform validate
4️⃣ terraform plan
5️⃣ terraform apply
```
Deploy ocorre automaticamente quando há push na branch main.

🔐 Secrets necessários configurados no GitHub:
```
ARM_CLIENT_ID
ARM_CLIENT_SECRET
ARM_TENANT_ID
ARM_SUBSCRIPTION_ID
```
Esses secrets permitem autenticação segura na Azure.

📊 Health Check

Endpoints disponíveis:
```
"/" = Retorna status da API.
"/health" = Retorna:

{
  "status": "ok",
  "database": "connected"
}
```
💰 Estimativa de custo

Utilizando camada básica da Azure:
```
App Service Plan (B1 ou F1)
Azure SQL Basic
```
Custo estimado mensal: ~ $5 – $15 USD

📂 Estrutura do projeto
```
API-LAB
  │
  ├── app.py
  ├── requirements.txt
  ├── Dockerfile
  │
  ├── main.tf
  ├── variables.tf
  ├── outputs.tf
  │
  └── .github/workflows
             └── terraform-ci.yml
```

🎯 Este projeto visa implementar laboratórios utilizando Cloud Infrastructure, IaC, Pipelines de CI/CD, garantindo eficiência e deploys automatizados;
Projeto desenvolvido por Samuel David como laboratório de estudo em Cloud e DevOps.
