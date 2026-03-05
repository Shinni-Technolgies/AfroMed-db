# AfroMed-db

PostgreSQL database for the [AfroMed Medical Admin Dashboard](https://github.com/Shinni-Technolgies/AfroMed).

## Overview

This repository contains the database schema and SQL migration files for AfroMed — a modern medical admin dashboard for doctors, clinics, and healthcare professionals.

## Database Design

The database is organized into logical schemas:

| Schema | Purpose | Tables |
|--------|---------|--------|
| `core` | Organizations, departments, users, roles | `organizations`, `departments`, `roles`, `users`, `user_roles` |
| `patient` | Patient demographics and insurance | `patients`, `patient_insurance` |
| `clinical` | Appointments, medical records, vitals | `appointments`, `medical_records`, `vitals`, `diagnoses` |
| `pharmacy` | Medications, prescriptions, inventory | `medications`, `prescriptions`, `prescription_items`, `inventory` |
| `billing` | Invoices and payments | `invoices`, `invoice_items`, `payments` |
| `lab` | Lab tests, orders, and results | `lab_tests`, `lab_orders`, `lab_results` |
| `audit` | Change tracking and audit trail | `audit_log` |

### Key Foreign Keys

Every data table includes these foreign keys for multi-tenant isolation and traceability:

- **`org_id`** — scopes all data to a specific organization/clinic
- **`user_id`** — tracks which user created or modified records
- **`department_id`** — associates data with departments within an organization

### Design Principles

- **Multi-tenant**: Row-level security isolates data by `org_id`
- **UUID primary keys**: Safe for distributed systems and API exposure
- **Soft-delete**: `is_active` flags instead of hard deletes
- **Timestamped**: `created_at` and `updated_at` on every table
- **PostgreSQL-native**: Uses UUID, TIMESTAMPTZ, JSONB, INET data types

## Migration Files

Migrations are numbered and must be applied in order:

```
migrations/
├── 001_core_schema.sql          # Organizations, departments, users, roles
├── 002_patient_schema.sql       # Patients and insurance
├── 003_clinical_schema.sql      # Appointments, records, vitals, diagnoses
├── 004_pharmacy_schema.sql      # Medications, prescriptions, inventory
├── 005_billing_schema.sql       # Invoices and payments
├── 006_lab_schema.sql           # Lab tests, orders, results
├── 007_audit_schema.sql         # Audit log and triggers
├── 008_indexes.sql              # Performance indexes
└── 009_row_level_security.sql   # RLS policies for org isolation
```

## Getting Started

### Prerequisites

- PostgreSQL 14+ installed and running

### Apply Migrations

Connect to your PostgreSQL instance and run the migrations in order:

```bash
# Create the database
psql -U postgres -c "CREATE DATABASE afromed;"

# Apply all migrations in order
for f in migrations/*.sql; do
  psql -U postgres -d afromed -f "$f"
done
```

Or apply individually:

```bash
psql -U postgres -d afromed -f migrations/001_core_schema.sql
psql -U postgres -d afromed -f migrations/002_patient_schema.sql
# ... continue for each file
```

### Row-Level Security

After applying migration 009, the application must set the org context per session:

```sql
SET app.current_org_id = 'your-org-uuid-here';
```

This ensures queries only return data for the active organization.

## Research

See [DATABASE_DESIGN_RESEARCH.md](DATABASE_DESIGN_RESEARCH.md) for the analysis of 12 similar database designs that informed this schema.

## License

MIT — Copyright © AfroMed
