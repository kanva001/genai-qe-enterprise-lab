# GenAI QE Enterprise Lab

An enterprise-style Quality Engineering portfolio repository demonstrating:
- Full-stack validation: UI + API + Data/DB checks
- Test methodologies: smoke, functional (positive/negative), regression, exploratory, performance
- Tooling: Java + Selenium + TestNG, Postman + Newman, SQL Server validations, JMeter
- GenAI-assisted QE: prompt-driven scenario generation, incident pattern analysis, coverage gap detection, feedback-loop test expansion
- Agile delivery artifacts and evidence (plans, matrices, results, readiness checklists)

## Targets (Open Practice Systems)
- UI: Sauce Demo (workflow UI automation)
- API: Restful Booker (auth + CRUD API)

## Repo Structure
- docs/confluence: strategy, plans, matrices, logs
- docs/sharepoint: test packs + results reports (versioned docs)
- automation/ui_java_selenium_testng: primary UI automation suite
- api/postman: Postman collection + environment
- api/newman: CLI runner scripts for CI
- data_validation/sqlserver: evidence DB schema + reconciliation queries
- performance/jmeter: load/stress/spike/soak test plans and reports
- prompts: GenAI prompt templates (manual -> scenario, incident clustering, coverage gaps)
- agile: sprint plans, DoD, backlog

## How to Run (Quick)
### UI Automation (Java/TestNG)
cd automation/ui_java_selenium_testng
mvn -q -Dtest=qe.ui.SauceDemoSmokeTest test

### API Tests (Postman/Newman)
cd api/newman
./run_newman.ps1

### DB Validations (SQL Server)
Run scripts in data_validation/sqlserver/schema then queries in data_validation/sqlserver/queries

### Performance (JMeter)
Open performance/jmeter/*.jmx in JMeter and run. Export HTML report to performance/jmeter/reports

## GenAI Usage (Safe, Deterministic)
GenAI is used for test design and analysis (prompt-driven scenario creation, incident clustering).
Execution remains deterministic via Selenium/TestNG, Newman, SQL scripts, and JMeter.