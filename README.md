# JUSTIN BEESON

> San Diego, CA  
> [justinbeeson@gmail.com](mailto:justinbeeson@gmail.com)  
> [linkedin.com/in/justinbeeson](https://www.linkedin.com/in/justinbeeson)  
> [github.com/thisjustin816](https://github.com/thisjustin816)  
> [powershellgallery.com/profiles/thisJUSTin816](https://www.powershellgallery.com/profiles/thisJUSTin816)

## Platform Engineer | DevOps, Data Infrastructure, and Cloud Automation

Platform Engineer with 17+ years in software development and 8+ years specializing in DevOps, internal developer platforms, and cloud engineering. Build the shared tooling, pipelines, and infrastructure patterns that move application teams from commit to production in regulated environments.

Work has centered on healthcare and medical device software: surgical planning platforms, AI-assisted decision systems, and medical imaging pipelines built to HIPAA, FDA, and ISO 27001 standards. Experience spans Azure and AWS with Terraform, CI/CD, and data-centric automation, translating between application, infrastructure, and clinical teams.

## KEY SKILLS & PROFICIENCIES

| Programming & Scripting                                           | Cloud & Platform                                                        | Concepts & Methodologies                                                                                                                                                                                                                                                                               |
| :---------------------------------------------------------------- | :---------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| PowerShell, Terraform, Python, Batch, Bash, YAML, Bicep, REST, C# | Azure, Azure DevOps, AWS, GitHub Actions, TeamCity, Docker, Git, GitHub | CI/CD, Infrastructure as Code (IaC), Internal Developer Platforms, Cloud Architecture, Data Pipelines, Observability & Monitoring, Release Management, Secrets Management, Agile Methodologies, DevSecOps, Networking & Security, Troubleshooting, QA & Testing, HIPAA, FDA, ISO 27001, Team Leadership |

## PROFESSIONAL EXPERIENCE

### CARLSMED, Carlsbad, CA

------

**Platform Engineer**  
_2026 - Present_

Bridge application development and AWS delivery in partnership with IT/DevOps, covering Terraform modules, environment configuration and secrets, observability and operational readiness, and data orchestration.

- Building Carlsmed's internal developer platform with CLI-driven tooling for local build/test workflows and CI/CD deployment scripting, reducing environment-setup and delivery friction across engineering teams.
- Facilitated organization-wide adoption of an automated security scanning platform (SAST/SCA/DAST) integrated into CI/CD, supporting ISO 27001 compliance objectives across the repository fleet.
- Built an internal package-registry and artifact-distribution system with defined publish pipelines across multiple product lines.
- Develop and operate AWS Glue, Step Functions, and EventBridge workflows, including scheduling, dependency handling, recovery, and production support.

**Lead Data Engineer**  
_2026_

Established the foundation of Carlsmed's AWS data platform: lake architecture, ETL, orchestration, and analytics.

- Delivered the first working proof of concept for the data platform: a medallion-architecture (bronze/silver/gold) data lake on S3 with AWS Glue ETL, a Glue Data Catalog, and Step Functions-orchestrated pipelines processing medical imaging (DICOM) data.
- Built an analytics pipeline for the myAprevo platform that directly informed infrastructure and product-development decisions.

### CRC GROUP, Charlotte, NC (Remote)

------

**Lead Platform Engineer**  
_2024 - 2026_

Architected, built, and maintained CI/CD and infrastructure automation for 30+ development teams across diverse software products using Terraform, Azure DevOps, and the Azure cloud. Collaborated with cross-functional engineering teams on consistent, auditable infrastructure standards supporting secure data processing and analytics workflows.

- Developed an automated drift reporting system for 2,000+ Terraform IaC pipelines, enabling proactive detection and remediation of configuration drift through shared dashboards and automated ticket creation.  
- Automated Azure DevOps instance migrations by combining the open-source [Azure DevOps Migration Tools](https://github.com/nkdAgility/azure-devops-migration-tools) with the AzDOCmd PowerShell module and direct REST API calls.
- Built PowerShell and Terraform-based tooling to migrate batches of virtual machines across Azure tenants, reducing manual intervention and wait times by up to 90% while improving reliability.

### NUVASIVE (now Globus Medical), San Diego, CA

------

**Lead DevOps Engineer**  
_2022 - 2024_

Led DevOps strategy and operations for the Surgical Intelligence product suite, supporting advanced surgical planning platforms and AI-assisted decision systems for personalized spine surgery. Oversaw cloud infrastructure, CI/CD automation, and data workflows across highly regulated software environments.

- Designed a 100% automated Azure deployment framework for App Service-based applications, enabling fully reproducible and compliant builds for R&D and production environments.  
- Implemented scalable pipelines for vulnerability and compliance scanning (OWASP, CWE) and ensured adherence to ISO 27001 and UL 2900 standards across 100+ microservice repositories, reducing vulnerability response time from weeks to hours.  
- Partnered with software and clinical engineering teams to maintain stable, secure environments for data-intensive healthcare software.  
- Managed a $250K annual software and cloud budget, optimizing spend and resource allocation.

**Senior DevOps Engineer**  
_2018 - 2022_

Supported the development of the Pulse Surgical Automation Platform, enabling imaging-based surgical workflows and device connectivity in clinical settings. Drove automation, hybrid cloud design, and data management for product development and testing environments.

- Created a 3-step automated imaging and configuration system adhering to strict cybersecurity and quality standards, supporting medical image and data workflows.  
- Designed network and hybrid cloud configurations for Pulse, optimizing performance for data capture, visualization, and connectivity with surgical devices.  
- Architected an on-prem/cloud hybrid build and release system that reduced compute costs by up to 80% and improved release traceability.  
- Collaborated directly with clinical and R&D teams during live surgical cases to troubleshoot, collect data, and validate performance of imaging and data processing systems.

**Test Engineer**  
_2016 - 2018_

Developed and executed system integration and regression testing for Windows-based and web-based clinical applications within Agile environments. Designed tools and test automation to validate imaging, connectivity, and performance requirements for surgical platforms.

- Authored and maintained regression and integration tests ensuring full verification coverage for clinical and regulatory requirements.  
- Designed automated performance test suites for imaging and data-heavy applications, reducing manual effort and improving reproducibility.

### SAMSUNG ELECTRONICS AMERICA, Long Beach, CA

------

**Senior Test Engineer**  
_2013 - 2015_

Led testing efforts for embedded media and set-top box systems, ensuring performance, reliability, and compatibility across multiple hardware platforms. Managed geographically distributed testing teams and developed automated test infrastructure.

- Created automated test scripts that reduced execution time by 50% and improved debugging accuracy.  
- Maintained automated test racks for 200+ units, enabling remote monitoring, test execution, and maintenance.  
- Coordinated functional certification for 6 DIRECTV hardware projects (H24, HR24, HR44, HR54, SH10, and 2015 RVU TVs), meeting all testing deadlines.

**Test Engineer**  
_2009 - 2013_

Performed functional and user interface testing for embedded media software and hardware systems. Partnered with global engineering teams to validate system reliability and user experience.

- Developed detailed UI testing procedures and automated validation workflows, reducing regression cycle times by 40%.  
- Collaborated with hardware and software teams in the U.S., Korea, and Brazil to deliver 24/7 test coverage and achieve functional certification for multiple releases.

## PERSONAL PROJECTS

### Open Source Modules & Automation Tooling

PowerShell modules published to the [PSGallery](https://www.powershellgallery.com/profiles/thisJUSTin816) plus a maintained Terraform module, covering automation, data processing, cloud naming standards, and CI/CD integration.

|                                      Project                                      |                                                                        Description                                                                        |
| :-------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [**AzDOCmd**](https://github.com/thisjustin816/AzDO)                              | PowerShell-based tooling to interact with the Azure DevOps REST API, automating reporting, data queries, and build metadata collection.                   |
| [**JBUtils**](https://github.com/thisjustin816/JBUtils)                           | Utilities for PowerShell including process management and data handling improvements.                                                                     |
| [**PSModuleUtils**](https://github.com/thisjustin816/PSModuleUtils)               | Functions that automate building, testing, and publishing PowerShell modules, supporting CI/CD pipelines.                                                 |
| [**terraform-null-label**](https://github.com/thisjustin816/terraform-null-label) | Terraform module for consistent labels and provider-aware AWS and Azure resource names, with per-service naming rules and an automated release workflow. |

### Retro Game QA & Playtesting

Functional and regression testing for retro game releases with [ModRetro](https://modretro.com) (cartridges for the Chromatic, an FPGA-based Game Boy and Game Boy Color compatible handheld), [Incube8 Games](https://incube8games.com) (physical cartridges for retro handhelds), and [Playtiles](https://playtil.es) (stick-on smartphone controller platform), plus ad hoc playtesting for independent developers.

## EDUCATION

**Bachelor of Science (BS), Computer Engineering**  
_California State University, Long Beach_

**Courses on PowerShell, Azure, Bicep, Kubernetes, Azure Kubernetes Service (AKS), Azure Pipelines and GitHub Actions, Python, Terraform, AWS, and data engineering concepts**  
_[Microsoft Learn](https://learn.microsoft.com/en-us/users/thisjustin816/transcript/dr5z9fkwwpnygjn), [Pluralsight](https://app.pluralsight.com/profile/justin-beeson), [Coursera](https://www.coursera.org/user/b6fcbd197190b1aada7a9caab88276b6)_

------

_This resume was generated from Markdown using GitHub Actions:_  
[![CI](https://github.com/thisjustin816/thisjustin816/actions/workflows/ci.yml/badge.svg)](https://github.com/thisjustin816/thisjustin816/actions/workflows/ci.yml)
