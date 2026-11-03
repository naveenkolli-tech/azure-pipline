# Azure Terraform Pipeline – FinCorp static website

Terraform + Azure Pipelines deploying a static website to Azure Blob Storage.

- `terraform/` – infrastructure code (resource group, storage account, static website, index.html)
- `azure-pipelines.yml` – init → validate → plan → apply on every push to main
- `docs/FinCorp_Terraform_Pipeline_Guide.pdf` – full step-by-step guide with screenshots

Live site: https://naveenweb2026.z19.web.core.windows.net/
