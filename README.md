# Azure FinOps Landing Zone (Bicep)

## Overview
This repository contains an **Azure Landing Zone focused on FinOps practices**, implemented using **Bicep (Infrastructure as Code)**.  
It is designed both as a **technical learning project** (AZ-104 aligned) and as a **professional showcase** of cloud cost governance and subscription-level controls.

The project follows enterprise-grade structuring principles:
- clear separation of scopes
- reusable modules
- environment-specific parameters
- Git-based versioning and traceability

---

## Objectives
- Deploy Azure resources in a **repeatable and auditable** way using Bicep
- Apply **FinOps principles** at the subscription and management scope levels
- Provide a clean foundation for:
  - cost governance
  - budget management
  - tagging standards
  - cost visibility and exports
- Serve as a **reference project** for Azure administration and FinOps use cases

---

## Repository Structure
azure-finops-landing-zone/
├─ bicep/
│ ├─ scopes/
│ │ ├─ managementGroup/
│ │ ├─ subscription/
│ │ └─ resourceGroup/
│ ├─ modules/
│ │ ├─ governance/
│ │ ├─ identity/
│ │ ├─ monitoring/
│ │ ├─ cost/
│ │ ├─ network/
│ │ └─ workloads/
│ └─ params/
│ ├─ nonprod.json
│ └─ prod.json
├─ pipelines/
├─ docs/
└─ README.md


### Design Principles
- **One scope = one entry point** (`main.bicep`)
- **Modules** are reusable and environment-agnostic
- **Parameters** isolate configuration from logic
- Structure inspired by **enterprise Azure Landing Zone patterns**

---

## Scope Strategy

| Scope | Purpose |
|------|--------|
| Management Group | Governance, policies, and hierarchy |
| Subscription | Budgets, cost controls, and shared services |
| Resource Group | Workload-level deployments |

---

## FinOps Focus
This project emphasizes **cost accountability and visibility**, including:
- subscription-level budgets
- cost allocation readiness (tags, structure)
- foundations for cost exports and reporting
- alignment with FinOps best practices (Inform → Optimize → Operate)

---

## Tooling
- **Bicep** — Infrastructure as Code
- **Azure CLI** — deployment and validation
- **Git / GitHub** — version control and collaboration

---

## Status
**Work in progress**

The repository currently provides:
- project structure
- entry points per scope
- environment parameter separation

Upcoming additions:
- subscription-level budget deployment
- governance and tagging modules
- cost export automation
- documentation and diagrams

---

## Disclaimer
This repository is intended for **learning, demonstration, and reference purposes**.  
It does not represent a complete production-ready landing zone without adaptation to organizational requirements.
