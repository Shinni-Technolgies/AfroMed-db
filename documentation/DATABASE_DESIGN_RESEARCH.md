# AfroMed Database Design Research

> Research conducted prior to creating migration files for the AfroMed medical admin dashboard PostgreSQL database.

## Sources of Similar Database Designs

### 1. JolianHabib/Medical-Clinic-Database (GitHub)
- **URL:** https://github.com/JolianHabib/Medical-Clinic-Database
- **Description:** PostgreSQL medical clinic database with ER diagrams and full DDL. Tables include `patients`, `staff`, `departments`, `appointments`, `prescriptions`, `medications`, and `medical_records`.
- **Strengths:** Enforces business rules with constraints/triggers (e.g., prevents past appointments). Clean schema with sample data.
- **Weaknesses:** Single-tenant only, no organization/multi-clinic support. No billing or lab modules.

### 2. GziXnine/Hospital_Management_System (GitHub)
- **URL:** https://github.com/GziXnine/Hospital_Management_System
- **Description:** Comprehensive hospital DB with tables for staff, billing, pharmacy, medicines, blood bank, appointments, prescriptions, rooms, cleaning, ambulance, and more.
- **Strengths:** Very thorough — covers nearly every hospital domain. Detailed ER diagram. Designed for scalability.
- **Weaknesses:** Overly complex for a clinic-scale app. Many tables that won't be needed for a medical admin dashboard.

### 3. eleanorgracethomson/ERD-Hospital (GitHub)
- **URL:** https://github.com/eleanorgracethomson/ERD-Hospital
- **Description:** ERD and SQL schema for a hospital system. Models Patients, Doctors, Appointments, Billing, Services, Insurance, and Payments.
- **Strengths:** Clean normalization with flexible billing/payments split between patients and insurance. Realistic hospital workflow.
- **Weaknesses:** No pharmacy or lab module. No multi-tenant support. MySQL-oriented syntax.

### 4. YaraAlissa/Hospital-Management-Project (GitHub)
- **URL:** https://github.com/YaraAlissa/Hospital-Management-Project
- **Description:** SQL schema with `01_tables.sql`, `02_inserts.sql`, views, and example queries. Models Patients, Doctors, Nurses, Appointments, Equipment, Staff, and Bills.
- **Strengths:** Well-organized migration-style files. Practical query examples. Clear README explaining relationships.
- **Weaknesses:** No pharmacy or prescription module. No audit trail. Single-tenant.

### 5. Hospital-DBMS (tpspace — PDM Project)
- **URL:** https://tpspace.github.io/Hospital-DBMS/
- **Description:** PostgreSQL backend with ER diagrams and relational models. Multi-role: Patients, Doctors, Nurses, Staff, Rooms, Appointments.
- **Strengths:** PostgreSQL-native. Includes setup instructions and environment config.
- **Weaknesses:** Academic project — not production-hardened. No billing or pharmacy.

### 6. neelskycyriss1/hospital_managment (GitHub)
- **URL:** https://github.com/neelskycyriss1/hospital_managment
- **Description:** Full-stack (Spring Boot + React) hospital management system. PostgreSQL with ERD in `docs/erd.md` and schema migrations. UUIDs, soft-delete, indexed tables, role-based access.
- **Strengths:** Modern architecture (UUIDs, soft delete, RBAC). Well-organized project structure.
- **Weaknesses:** Tightly coupled to Spring Boot. Java-specific naming conventions.

### 7. OpenMRS Data Model
- **URL:** https://openmrs.atlassian.net/wiki/display/docs/Data+Model
- **Description:** Open-source medical record system used globally. Core domains: Concept, Encounter, Visit, Location, Form, Observation, Conditions, Diagnosis, Order, Patient, User, Person.
- **Strengths:** Battle-tested at massive scale. Concept dictionary approach allows dynamic clinical content without schema changes. Uses "voided"/"retired" patterns for safe data lifecycle.
- **Weaknesses:** Extremely complex — 100+ tables. Overkill for a dashboard app. Steep learning curve.

### 8. OpenEMR Database Structure
- **URL:** https://www.open-emr.org/wiki/index.php/Database_Structure
- **Description:** Open-source EHR with MySQL/MariaDB backend. Tables: `patient_data`, `form_encounter`, `billing`, `lists`, `addresses`, `amendments`, audit/history.
- **Strengths:** HIPAA-compliant design. Multi-site support via database isolation. Comprehensive audit tables. UUIDs for interoperability.
- **Weaknesses:** MySQL-specific. Very large schema (200+ tables). Multi-tenancy via separate databases rather than row-level isolation.

### 9. w3resource Hospital Patient Database Project
- **URL:** https://www.w3resource.com/projects/sql/sql-projects-on-hospital-patient-database.php
- **Description:** Educational project with essential tables: `Patients`, `Doctors`, `Appointments`, `Prescriptions`, `Bills`, `Medicines`. PostgreSQL-compatible SQL.
- **Strengths:** Clean, minimal design focused on core entities. Easy to understand and extend. Good starting point.
- **Weaknesses:** Too simple for production. No departments, organizations, or user management.

### 10. GeeksforGeeks Healthcare DBMS Design
- **URL:** https://www.geeksforgeeks.org/dbms/how-to-design-a-database-for-healthcare-management-system/
- **Description:** Methodology guide for designing hospital management ERDs. Lists expected features, module relationships, and normalization strategies.
- **Strengths:** Good theoretical framework. Covers entity identification, relationship mapping, and normalization steps.
- **Weaknesses:** Conceptual only — no actual SQL or migration files. No multi-tenant considerations.

### 11. Creately ER Diagram Templates for Hospital Management
- **URL:** https://creately.com/guides/er-diagrams-for-hospital-management-systems/
- **Description:** Collection of 10 hospital ER diagram templates covering various levels of complexity. Visual approach to database design.
- **Strengths:** Excellent visualization of entity relationships. Multiple complexity levels to choose from.
- **Weaknesses:** Diagram-only — no SQL implementation. Visual focus may miss implementation details.

### 12. Tansy Academy PostgreSQL ERD Hospital Project
- **URL:** https://tansyacademy.com/postgresql/database-sql-rdbms-concepts/sql-erd-data-model-diagram-database-project-hospital-management-system
- **Description:** PostgreSQL-specific ERD and data model assignment for a hospital management system. Includes normalization exercises.
- **Strengths:** PostgreSQL-native with proper data types. Educational structure with clear progression.
- **Weaknesses:** Academic exercise — not production-ready. Missing advanced features like audit logs.

---

## Comparative Analysis

| # | Source | Cleanest | Simplest | Most Resource-Thrifty | Multi-Tenant | Score |
|---|--------|----------|----------|-----------------------|--------------|-------|
| 1 | JolianHabib/Medical-Clinic-Database | ★★★★☆ | ★★★★☆ | ★★★★☆ | ✗ | 12/15 |
| 2 | GziXnine/Hospital_Management_System | ★★★☆☆ | ★★☆☆☆ | ★★☆☆☆ | ✗ | 7/15 |
| 3 | eleanorgracethomson/ERD-Hospital | ★★★★☆ | ★★★★☆ | ★★★★☆ | ✗ | 12/15 |
| 4 | YaraAlissa/Hospital-Management-Project | ★★★★★ | ★★★★★ | ★★★★☆ | ✗ | 14/15 |
| 5 | Hospital-DBMS (tpspace) | ★★★☆☆ | ★★★★☆ | ★★★☆☆ | ✗ | 10/15 |
| 6 | neelskycyriss1/hospital_managment | ★★★★★ | ★★★☆☆ | ★★★★☆ | ✗ | 12/15 |
| 7 | OpenMRS | ★★★★★ | ★☆☆☆☆ | ★☆☆☆☆ | ★ (partial) | 8/15 |
| 8 | OpenEMR | ★★★★☆ | ★☆☆☆☆ | ★☆☆☆☆ | ★ (db-level) | 7/15 |
| 9 | w3resource Hospital DB | ★★★☆☆ | ★★★★★ | ★★★★★ | ✗ | 13/15 |
| 10 | GeeksforGeeks Healthcare DBMS | ★★★☆☆ | ★★★★☆ | ★★★★☆ | ✗ | 11/15 |
| 11 | Creately ER Templates | ★★★★☆ | ★★★★☆ | ★★★★☆ | ✗ | 12/15 |
| 12 | Tansy Academy PostgreSQL ERD | ★★★☆☆ | ★★★★☆ | ★★★★☆ | ✗ | 11/15 |

### Rating Criteria

- **Cleanest**: Well-normalized, consistent naming, proper constraints, clear separation of concerns
- **Simplest**: Minimal tables/columns to achieve functionality, easy to understand and maintain
- **Most Resource-Thrifty**: Efficient use of data types, minimal storage overhead, good indexing strategy

---

## Rankings

### Cleanest Design
1. **neelskycyriss1/hospital_managment** — Modern architecture with UUIDs, soft-delete, RBAC, and clear separation
2. **YaraAlissa/Hospital-Management-Project** — Well-organized migration files with clean table structure
3. **OpenMRS** — Battle-tested normalization and concept dictionary approach

### Simplest Design
1. **w3resource Hospital DB** — Minimal tables focused on core entities, easiest to understand
2. **YaraAlissa/Hospital-Management-Project** — Clean and focused without unnecessary complexity
3. **JolianHabib/Medical-Clinic-Database** — Simple clinic-scale design with just the essentials

### Most Resource-Thrifty Design
1. **w3resource Hospital DB** — Fewest tables and columns, minimal storage footprint
2. **JolianHabib/Medical-Clinic-Database** — Efficient design without bloat
3. **YaraAlissa/Hospital-Management-Project** — Balanced between features and resource usage

---

## Design Decision for AfroMed

Based on the analysis above, the AfroMed database design draws from the best aspects of each:

- **From YaraAlissa (#4)**: Migration-file organization, clean table structure, practical naming conventions
- **From neelskycyriss1 (#6)**: UUIDs for primary keys, soft-delete pattern, role-based access control
- **From JolianHabib (#1)**: Constraint-driven integrity, triggers for business rules
- **From w3resource (#9)**: Minimal table design — only create what's needed
- **From OpenMRS (#7)**: Audit trail patterns ("created_by", "updated_at" on every table)

### Key Design Principles for AfroMed:
1. **Multi-tenant by default**: Every data table includes `org_id` foreign key
2. **Department-aware**: `department_id` foreign key where relevant
3. **User-trackable**: `user_id` / `created_by` / `updated_by` on all records
4. **UUID primary keys**: Better for distributed systems and API exposure
5. **Soft-delete**: `is_active` flag instead of hard deletes
6. **Timestamped**: `created_at` and `updated_at` on every table
7. **PostgreSQL-native**: Use proper PG data types (UUID, TIMESTAMPTZ, JSONB where appropriate)
8. **Organized schemas**: Logical grouping into `core`, `patient`, `clinical`, `pharmacy`, `billing`, `lab` schemas
9. **Sequential migrations**: Numbered files that can be applied in order
