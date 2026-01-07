# GenAI QE Enterprise Lab

## Overview

This repository demonstrates an enterprise-grade Quality Engineering (QE framework) that integrates traditional QE practices with GenAI-assisted intelligence to improve test coverage, reliability, and feedback-driven learning.

The project is designed to reflect how senior QE teams operate in real enterprise environments, combining:

- Full-stack validation across UI, API, Data/DB, and Performance
- Comprehensive test methodologies (smoke, functional, negative, regression, exploratory, performance)
- Enterprise QE tooling and processes
- Responsible and auditable application of GenAI
- Agile delivery artifacts and execution evidence


## Why This Project Matters for GenAI Quality Engineering

This project demonstrates how GenAI can be applied responsibly to Quality Engineering workflows.

GenAI is NOT used to execute tests.

Instead, it acts as an intelligence layer that:

- Learns from runtime behavior, defects, and escalations
- Identifies gaps in validation coverage
- Recommends new deterministic test scenarios
- Feeds insights back into regression and release validation

This mirrors how modern enterprise platforms use runtime feedback to continuously improve decision quality and resilience.


## Target Systems (Open Practice Applications)

To ensure reproducibility and hands-on execution, this project uses publicly available test systems:

- UI Application: Sauce Demo, Workflow-based UI suitable for login, cart, and checkout testing

- API Application: Restful Booker  
  Authentication and CRUD-based API suitable for smoke, functional, regression, and performance testing


## Quality Engineering Methodologies Covered

The following QE methodologies are implemented and demonstrated:

- Smoke Testing
- Functional Testing (Positive and Negative)
- Regression Testing
- Exploratory Testing (GenAI-assisted)
- API Testing
- Data and Database Validation
- Performance Testing (Load, Stress, Spike, Soak)
- Risk-Based Testing
- Release Readiness Validation


## Tools and Technologies

### Automation and Testing
- Java, Selenium, TestNG, Maven
- Python (API automation and GenAI orchestration)
- Postman collections
- Newman CLI
- JMeter (performance testing)

### Data and Validation
- SQL Server (test evidence and reconciliation database)
- SQL-based data integrity and reconciliation checks

### DevOps and CI
- GitHub
- GitHub Actions (CI-ready)
- Jenkins (reference pipeline)
- TestNG and JUnit-style reporting

### GenAI (Applied to QE)
- Prompt engineering for test scenario generation
- Incident and escalation pattern analysis
- Coverage gap detection and feedback loops
- Human-in-the-loop validation for safety and determinism

### Documentation and Process
- Agile sprint planning and backlog
- Definition of Done (DoD)
- Traceability Matrix
- Test plans and test results reports
- Release readiness checklists


## Repository Structure

    genai-qe-enterprise-lab/
    ├── README.md
    ├── docs/
    │   ├── confluence/
    │   └── sharepoint/
    ├── agile/
    │   ├── backlog.md
    │   ├── sprint_0.md
    │   ├── sprint_1.md
    │   ├── sprint_2.md
    │   └── definition_of_done.md
    ├── automation/
    │   ├── ui_java_selenium_testng/
    │   ├── ui_python_selenium/
    │   └── api_pytest/
    ├── api/
    │   ├── postman/
    │   └── newman/
    ├── data_validation/
    │   └── sqlserver/
    ├── performance/
    │   └── jmeter/
    ├── prompts/
    │   ├── manual_to_scenario.prompt
    │   ├── incident_cluster.prompt
    │   ├── explore_next_steps.prompt
    │   └── gap_to_tests.prompt
    ├── genai_outputs/
    ├── artifacts/
    └── ci/


## How to Run (Quick Start)

### UI Automation (Java + Selenium + TestNG)

    cd automation/ui_java_selenium_testng
    mvn test


### API Testing (Postman + Newman)

    cd api/newman
    ./run_newman.ps1


### Database Validation

Execute SQL scripts located in:

    data_validation/sqlserver/schema

Run reconciliation queries located in:

    data_validation/sqlserver/queries


### Performance Testing (JMeter)

Open JMeter test plans located in:

    performance/jmeter

Execute the test plans in Apache JMeter.

Export HTML reports to:

    performance/jmeter/reports


## GenAI Usage Model

GenAI is NOT used to execute tests.

Instead, GenAI is applied to:

- Analyze manual test descriptions
- Extract test intent and validation logic
- Cluster defect and incident patterns
- Identify coverage gaps
- Recommend deterministic test scenarios

All GenAI outputs are:

- Schema-validated
- Reviewed by a QE engineer
- Converted into deterministic automation code
- Logged for auditability

This ensures reliability, safety, and repeatability.


## Agile Delivery Model

The project follows an incremental Agile approach:

- Sprint 0 – Foundation, strategy, smoke tests, tooling setup
- Sprint 1 – Functional, negative, regression testing and GenAI scenario generation
- Sprint 2 – Performance testing, incident intelligence, feedback-loop expansion

Each sprint produces:

- Test evidence
- Reports
- Updated documentation
- Release readiness artifacts


## Purpose of This Repository

This repository demonstrates:

- Senior-level Quality Engineering maturity
- Practical and responsible application of GenAI to QE
- Full test lifecycle ownership
- Alignment with enterprise platforms that rely on runtime learning and feedback-driven improvement


## Disclaimer

This project uses synthetic or public test data only.
No proprietary systems, credentials, or internal datasets are used.