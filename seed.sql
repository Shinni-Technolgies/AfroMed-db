-- =============================================================================
-- AfroMed Healthcare Database - Comprehensive Seed Data
-- =============================================================================
-- This file populates ALL tables across the database schemas with realistic
-- data for 10 African healthcare facilities. Foreign key references are
-- consistent within each organization.
--
-- UUID Scheme:
--   Orgs:               10000000-0000-0000-0000-00000000000N
--   Departments:        20000000-0000-0000-0000-0000000000NN
--   Roles:              30000000-0000-0000-0000-0000000000NN
--   Users:              40000000-0000-0000-0000-0000000000NN
--   Patients:           50000000-0000-0000-0000-0000000000NN
--   Insurance:          51000000-0000-0000-0000-0000000000NN
--   Appointments:       60000000-0000-0000-0000-0000000000NN
--   Medical Records:    61000000-0000-0000-0000-0000000000NN
--   Vitals:             62000000-0000-0000-0000-0000000000NN
--   Diagnoses:          63000000-0000-0000-0000-0000000000NN
--   Medications:        70000000-0000-0000-0000-0000000000NN
--   Prescriptions:      71000000-0000-0000-0000-0000000000NN
--   Prescription Items: 72000000-0000-0000-0000-0000000000NN
--   Inventory:          73000000-0000-0000-0000-0000000000NN
--   Invoices:           80000000-0000-0000-0000-0000000000NN
--   Invoice Items:      81000000-0000-0000-0000-0000000000NN
--   Payments:           82000000-0000-0000-0000-0000000000NN
--   Lab Tests:          90000000-0000-0000-0000-0000000000NN
--   Lab Orders:         91000000-0000-0000-0000-0000000000NN
--   Lab Results:        92000000-0000-0000-0000-0000000000NN
--
-- NOTE: Do NOT insert into audit.audit_log; triggers populate it automatically.
-- =============================================================================

BEGIN;

-- =============================================================================
-- CORE SCHEMA: Organizations (10)
-- =============================================================================

INSERT INTO core.organizations (org_id, name, slug, address, city, state, country, postal_code, phone, email, website, license_number, is_active, created_at, updated_at) VALUES
('10000000-0000-0000-0000-000000000001', 'Lagos University Teaching Hospital', 'lagos-uth', '1 Idi-Araba Road, Surulere', 'Lagos', 'Lagos State', 'Nigeria', '100254', '+234-1-800-5555', 'info@luth.ng', 'https://luth.ng', 'LIC-NG-001', TRUE, '2025-01-01 08:00:00+00', '2025-01-01 08:00:00+00'),
('10000000-0000-0000-0000-000000000002', 'Nairobi Metropolitan Hospital', 'nairobi-metro', 'Hospital Road, Kenyatta Avenue', 'Nairobi', 'Nairobi County', 'Kenya', '00100', '+254-20-271-6300', 'info@nairobimetro.co.ke', 'https://nairobimetro.co.ke', 'LIC-KE-002', TRUE, '2025-01-02 08:00:00+00', '2025-01-02 08:00:00+00'),
('10000000-0000-0000-0000-000000000003', 'Korle Bu Medical Centre', 'korle-bu-mc', 'Guggisberg Avenue', 'Accra', 'Greater Accra', 'Ghana', 'GA-456', '+233-30-266-5401', 'info@korlebu.gh', 'https://korlebu.gh', 'LIC-GH-003', TRUE, '2025-01-03 08:00:00+00', '2025-01-03 08:00:00+00'),
('10000000-0000-0000-0000-000000000004', 'Tikur Anbessa Hospital', 'tikur-anbessa', 'Churchill Avenue', 'Addis Ababa', 'Addis Ababa', 'Ethiopia', '1000', '+251-11-551-1211', 'info@tikuranbessa.et', 'https://tikuranbessa.et', 'LIC-ET-004', TRUE, '2025-01-04 08:00:00+00', '2025-01-04 08:00:00+00'),
('10000000-0000-0000-0000-000000000005', 'Groote Schuur Medical Centre', 'groote-schuur-mc', 'Main Road, Observatory', 'Cape Town', 'Western Cape', 'South Africa', '7925', '+27-21-404-9111', 'info@gsh.co.za', 'https://gsh.co.za', 'LIC-ZA-005', TRUE, '2025-01-05 08:00:00+00', '2025-01-05 08:00:00+00'),
('10000000-0000-0000-0000-000000000006', 'Muhimbili Health Centre', 'muhimbili-hc', 'United Nations Road', 'Dar es Salaam', 'Dar es Salaam', 'Tanzania', '65001', '+255-22-215-0096', 'info@muhimbili.tz', 'https://muhimbili.tz', 'LIC-TZ-006', TRUE, '2025-01-06 08:00:00+00', '2025-01-06 08:00:00+00'),
('10000000-0000-0000-0000-000000000007', 'Kampala Children''s Hospital', 'kampala-childrens', 'Mulago Hill Road', 'Kampala', 'Central Region', 'Uganda', '256', '+256-41-454-1188', 'info@kampalach.ug', 'https://kampalach.ug', 'LIC-UG-007', TRUE, '2025-01-07 08:00:00+00', '2025-01-07 08:00:00+00'),
('10000000-0000-0000-0000-000000000008', 'Kigali Health Partners', 'kigali-health', 'KN 4 Avenue', 'Kigali', 'Kigali City', 'Rwanda', '250', '+250-78-830-0000', 'info@kigalihealth.rw', 'https://kigalihealth.rw', 'LIC-RW-008', TRUE, '2025-01-08 08:00:00+00', '2025-01-08 08:00:00+00'),
('10000000-0000-0000-0000-000000000009', 'Abuja Specialist Clinic', 'abuja-specialist', 'Wuse Zone 4, Plot 123', 'Abuja', 'FCT', 'Nigeria', '900211', '+234-9-870-1234', 'info@abujaspecialist.ng', 'https://abujaspecialist.ng', 'LIC-NG-009', TRUE, '2025-01-09 08:00:00+00', '2025-01-09 08:00:00+00'),
('10000000-0000-0000-0000-000000000010', 'Casablanca Medical Institute', 'casablanca-mi', 'Boulevard Zerktouni, Maarif', 'Casablanca', 'Casablanca-Settat', 'Morocco', '20250', '+212-522-279-000', 'info@casablancami.ma', 'https://casablancami.ma', 'LIC-MA-010', TRUE, '2025-01-10 08:00:00+00', '2025-01-10 08:00:00+00');

-- =============================================================================
-- CORE SCHEMA: Departments (5 per org = 50 total)
-- =============================================================================

INSERT INTO core.departments (department_id, org_id, name, description, phone, is_active, created_at, updated_at) VALUES
('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', 'General Medicine', 'Primary care and internal medicine services', '+000-DEPT-0001', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000001', 'Pediatrics', 'Healthcare services for infants, children, and adolescents', '+000-DEPT-0002', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000001', 'Surgery', 'Surgical procedures and pre/post-operative care', '+000-DEPT-0003', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000001', 'Emergency', 'Emergency and acute care services', '+000-DEPT-0004', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000001', 'Pharmacy', 'Pharmaceutical dispensing and medication management', '+000-DEPT-0005', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000002', 'General Medicine', 'Primary care and internal medicine services', '+000-DEPT-0006', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000002', 'Pediatrics', 'Healthcare services for infants, children, and adolescents', '+000-DEPT-0007', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000002', 'Surgery', 'Surgical procedures and pre/post-operative care', '+000-DEPT-0008', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000002', 'Emergency', 'Emergency and acute care services', '+000-DEPT-0009', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000002', 'Pharmacy', 'Pharmaceutical dispensing and medication management', '+000-DEPT-0010', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000011', '10000000-0000-0000-0000-000000000003', 'General Medicine', 'Primary care and internal medicine services', '+000-DEPT-0011', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000012', '10000000-0000-0000-0000-000000000003', 'Pediatrics', 'Healthcare services for infants, children, and adolescents', '+000-DEPT-0012', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000013', '10000000-0000-0000-0000-000000000003', 'Surgery', 'Surgical procedures and pre/post-operative care', '+000-DEPT-0013', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000014', '10000000-0000-0000-0000-000000000003', 'Emergency', 'Emergency and acute care services', '+000-DEPT-0014', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000015', '10000000-0000-0000-0000-000000000003', 'Pharmacy', 'Pharmaceutical dispensing and medication management', '+000-DEPT-0015', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000016', '10000000-0000-0000-0000-000000000004', 'General Medicine', 'Primary care and internal medicine services', '+000-DEPT-0016', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000017', '10000000-0000-0000-0000-000000000004', 'Pediatrics', 'Healthcare services for infants, children, and adolescents', '+000-DEPT-0017', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000018', '10000000-0000-0000-0000-000000000004', 'Surgery', 'Surgical procedures and pre/post-operative care', '+000-DEPT-0018', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000019', '10000000-0000-0000-0000-000000000004', 'Emergency', 'Emergency and acute care services', '+000-DEPT-0019', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000020', '10000000-0000-0000-0000-000000000004', 'Pharmacy', 'Pharmaceutical dispensing and medication management', '+000-DEPT-0020', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000021', '10000000-0000-0000-0000-000000000005', 'General Medicine', 'Primary care and internal medicine services', '+000-DEPT-0021', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000022', '10000000-0000-0000-0000-000000000005', 'Pediatrics', 'Healthcare services for infants, children, and adolescents', '+000-DEPT-0022', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000023', '10000000-0000-0000-0000-000000000005', 'Surgery', 'Surgical procedures and pre/post-operative care', '+000-DEPT-0023', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000024', '10000000-0000-0000-0000-000000000005', 'Emergency', 'Emergency and acute care services', '+000-DEPT-0024', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000025', '10000000-0000-0000-0000-000000000005', 'Pharmacy', 'Pharmaceutical dispensing and medication management', '+000-DEPT-0025', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000026', '10000000-0000-0000-0000-000000000006', 'General Medicine', 'Primary care and internal medicine services', '+000-DEPT-0026', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000027', '10000000-0000-0000-0000-000000000006', 'Pediatrics', 'Healthcare services for infants, children, and adolescents', '+000-DEPT-0027', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000028', '10000000-0000-0000-0000-000000000006', 'Surgery', 'Surgical procedures and pre/post-operative care', '+000-DEPT-0028', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000029', '10000000-0000-0000-0000-000000000006', 'Emergency', 'Emergency and acute care services', '+000-DEPT-0029', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000030', '10000000-0000-0000-0000-000000000006', 'Pharmacy', 'Pharmaceutical dispensing and medication management', '+000-DEPT-0030', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000031', '10000000-0000-0000-0000-000000000007', 'General Medicine', 'Primary care and internal medicine services', '+000-DEPT-0031', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000032', '10000000-0000-0000-0000-000000000007', 'Pediatrics', 'Healthcare services for infants, children, and adolescents', '+000-DEPT-0032', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000033', '10000000-0000-0000-0000-000000000007', 'Surgery', 'Surgical procedures and pre/post-operative care', '+000-DEPT-0033', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000034', '10000000-0000-0000-0000-000000000007', 'Emergency', 'Emergency and acute care services', '+000-DEPT-0034', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000035', '10000000-0000-0000-0000-000000000007', 'Pharmacy', 'Pharmaceutical dispensing and medication management', '+000-DEPT-0035', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000036', '10000000-0000-0000-0000-000000000008', 'General Medicine', 'Primary care and internal medicine services', '+000-DEPT-0036', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000037', '10000000-0000-0000-0000-000000000008', 'Pediatrics', 'Healthcare services for infants, children, and adolescents', '+000-DEPT-0037', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000038', '10000000-0000-0000-0000-000000000008', 'Surgery', 'Surgical procedures and pre/post-operative care', '+000-DEPT-0038', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000039', '10000000-0000-0000-0000-000000000008', 'Emergency', 'Emergency and acute care services', '+000-DEPT-0039', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000040', '10000000-0000-0000-0000-000000000008', 'Pharmacy', 'Pharmaceutical dispensing and medication management', '+000-DEPT-0040', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000041', '10000000-0000-0000-0000-000000000009', 'General Medicine', 'Primary care and internal medicine services', '+000-DEPT-0041', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000042', '10000000-0000-0000-0000-000000000009', 'Pediatrics', 'Healthcare services for infants, children, and adolescents', '+000-DEPT-0042', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000043', '10000000-0000-0000-0000-000000000009', 'Surgery', 'Surgical procedures and pre/post-operative care', '+000-DEPT-0043', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000044', '10000000-0000-0000-0000-000000000009', 'Emergency', 'Emergency and acute care services', '+000-DEPT-0044', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000045', '10000000-0000-0000-0000-000000000009', 'Pharmacy', 'Pharmaceutical dispensing and medication management', '+000-DEPT-0045', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000046', '10000000-0000-0000-0000-000000000010', 'General Medicine', 'Primary care and internal medicine services', '+000-DEPT-0046', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000047', '10000000-0000-0000-0000-000000000010', 'Pediatrics', 'Healthcare services for infants, children, and adolescents', '+000-DEPT-0047', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000048', '10000000-0000-0000-0000-000000000010', 'Surgery', 'Surgical procedures and pre/post-operative care', '+000-DEPT-0048', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000049', '10000000-0000-0000-0000-000000000010', 'Emergency', 'Emergency and acute care services', '+000-DEPT-0049', TRUE, NOW(), NOW()),
('20000000-0000-0000-0000-000000000050', '10000000-0000-0000-0000-000000000010', 'Pharmacy', 'Pharmaceutical dispensing and medication management', '+000-DEPT-0050', TRUE, NOW(), NOW());

-- =============================================================================
-- CORE SCHEMA: Roles (4 per org = 40 total)
-- =============================================================================

INSERT INTO core.roles (role_id, org_id, name, description, is_active, created_at, updated_at) VALUES
('30000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', 'Doctor', 'Licensed medical doctor with prescribing privileges', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000001', 'Nurse', 'Registered nurse providing patient care and vital monitoring', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000001', 'Administrator', 'Hospital administrator managing operations and billing', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000001', 'Pharmacist', 'Clinical pharmacist handling medication dispensing and inventory', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000002', 'Doctor', 'Licensed medical doctor with prescribing privileges', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000002', 'Nurse', 'Registered nurse providing patient care and vital monitoring', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000002', 'Administrator', 'Hospital administrator managing operations and billing', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000002', 'Pharmacist', 'Clinical pharmacist handling medication dispensing and inventory', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000003', 'Doctor', 'Licensed medical doctor with prescribing privileges', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000003', 'Nurse', 'Registered nurse providing patient care and vital monitoring', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000011', '10000000-0000-0000-0000-000000000003', 'Administrator', 'Hospital administrator managing operations and billing', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000012', '10000000-0000-0000-0000-000000000003', 'Pharmacist', 'Clinical pharmacist handling medication dispensing and inventory', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000013', '10000000-0000-0000-0000-000000000004', 'Doctor', 'Licensed medical doctor with prescribing privileges', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000014', '10000000-0000-0000-0000-000000000004', 'Nurse', 'Registered nurse providing patient care and vital monitoring', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000015', '10000000-0000-0000-0000-000000000004', 'Administrator', 'Hospital administrator managing operations and billing', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000016', '10000000-0000-0000-0000-000000000004', 'Pharmacist', 'Clinical pharmacist handling medication dispensing and inventory', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000017', '10000000-0000-0000-0000-000000000005', 'Doctor', 'Licensed medical doctor with prescribing privileges', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000018', '10000000-0000-0000-0000-000000000005', 'Nurse', 'Registered nurse providing patient care and vital monitoring', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000019', '10000000-0000-0000-0000-000000000005', 'Administrator', 'Hospital administrator managing operations and billing', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000020', '10000000-0000-0000-0000-000000000005', 'Pharmacist', 'Clinical pharmacist handling medication dispensing and inventory', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000021', '10000000-0000-0000-0000-000000000006', 'Doctor', 'Licensed medical doctor with prescribing privileges', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000022', '10000000-0000-0000-0000-000000000006', 'Nurse', 'Registered nurse providing patient care and vital monitoring', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000023', '10000000-0000-0000-0000-000000000006', 'Administrator', 'Hospital administrator managing operations and billing', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000024', '10000000-0000-0000-0000-000000000006', 'Pharmacist', 'Clinical pharmacist handling medication dispensing and inventory', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000025', '10000000-0000-0000-0000-000000000007', 'Doctor', 'Licensed medical doctor with prescribing privileges', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000026', '10000000-0000-0000-0000-000000000007', 'Nurse', 'Registered nurse providing patient care and vital monitoring', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000027', '10000000-0000-0000-0000-000000000007', 'Administrator', 'Hospital administrator managing operations and billing', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000028', '10000000-0000-0000-0000-000000000007', 'Pharmacist', 'Clinical pharmacist handling medication dispensing and inventory', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000029', '10000000-0000-0000-0000-000000000008', 'Doctor', 'Licensed medical doctor with prescribing privileges', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000030', '10000000-0000-0000-0000-000000000008', 'Nurse', 'Registered nurse providing patient care and vital monitoring', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000031', '10000000-0000-0000-0000-000000000008', 'Administrator', 'Hospital administrator managing operations and billing', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000032', '10000000-0000-0000-0000-000000000008', 'Pharmacist', 'Clinical pharmacist handling medication dispensing and inventory', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000033', '10000000-0000-0000-0000-000000000009', 'Doctor', 'Licensed medical doctor with prescribing privileges', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000034', '10000000-0000-0000-0000-000000000009', 'Nurse', 'Registered nurse providing patient care and vital monitoring', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000035', '10000000-0000-0000-0000-000000000009', 'Administrator', 'Hospital administrator managing operations and billing', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000036', '10000000-0000-0000-0000-000000000009', 'Pharmacist', 'Clinical pharmacist handling medication dispensing and inventory', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000037', '10000000-0000-0000-0000-000000000010', 'Doctor', 'Licensed medical doctor with prescribing privileges', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000038', '10000000-0000-0000-0000-000000000010', 'Nurse', 'Registered nurse providing patient care and vital monitoring', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000039', '10000000-0000-0000-0000-000000000010', 'Administrator', 'Hospital administrator managing operations and billing', TRUE, NOW(), NOW()),
('30000000-0000-0000-0000-000000000040', '10000000-0000-0000-0000-000000000010', 'Pharmacist', 'Clinical pharmacist handling medication dispensing and inventory', TRUE, NOW(), NOW());

-- =============================================================================
-- CORE SCHEMA: Users (4 per org = 40 total)
-- =============================================================================

INSERT INTO core.users (user_id, org_id, department_id, email, password_hash, first_name, last_name, phone, job_title, license_number, specialization, is_active, created_at, updated_at) VALUES
('40000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', 'a.okonkwo@luth.ng', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Adebayo', 'Okonkwo', '+000-USR-0001', 'Medical Doctor', 'MD-10001', 'Internal Medicine', TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000004', 'n.amadi@luth.ng', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Ngozi', 'Amadi', '+000-USR-0002', 'Registered Nurse', 'RN-10002', NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', 'f.bakare@luth.ng', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Folake', 'Bakare', '+000-USR-0003', 'Hospital Administrator', NULL, NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000005', 'c.eze@luth.ng', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Chinedu', 'Eze', '+000-USR-0004', 'Clinical Pharmacist', 'PH-10004', NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000002', '20000000-0000-0000-0000-000000000006', 'j.kamau@nairobimetro.co.ke', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'James', 'Kamau', '+000-USR-0005', 'Medical Doctor', 'MD-20001', 'General Practice', TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000002', '20000000-0000-0000-0000-000000000009', 'w.mwangi@nairobimetro.co.ke', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Wanjiru', 'Mwangi', '+000-USR-0006', 'Registered Nurse', 'RN-20002', NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000002', '20000000-0000-0000-0000-000000000006', 'p.odhiambo@nairobimetro.co.ke', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Peter', 'Odhiambo', '+000-USR-0007', 'Hospital Administrator', NULL, NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000002', '20000000-0000-0000-0000-000000000010', 'a.wafula@nairobimetro.co.ke', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Amina', 'Wafula', '+000-USR-0008', 'Clinical Pharmacist', 'PH-20004', NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000003', '20000000-0000-0000-0000-000000000011', 'k.mensah@korlebu.gh', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Kwame', 'Mensah', '+000-USR-0009', 'Medical Doctor', 'MD-30001', 'Family Medicine', TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000003', '20000000-0000-0000-0000-000000000014', 'a.asante@korlebu.gh', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Abena', 'Asante', '+000-USR-0010', 'Registered Nurse', 'RN-30002', NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000011', '10000000-0000-0000-0000-000000000003', '20000000-0000-0000-0000-000000000011', 'k.boateng@korlebu.gh', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Kofi', 'Boateng', '+000-USR-0011', 'Hospital Administrator', NULL, NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000012', '10000000-0000-0000-0000-000000000003', '20000000-0000-0000-0000-000000000015', 'a.darko@korlebu.gh', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Akosua', 'Darko', '+000-USR-0012', 'Clinical Pharmacist', 'PH-30004', NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000013', '10000000-0000-0000-0000-000000000004', '20000000-0000-0000-0000-000000000016', 't.bekele@tikuranbessa.et', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Tadesse', 'Bekele', '+000-USR-0013', 'Medical Doctor', 'MD-40001', 'Internal Medicine', TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000014', '10000000-0000-0000-0000-000000000004', '20000000-0000-0000-0000-000000000019', 'm.haile@tikuranbessa.et', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Meron', 'Haile', '+000-USR-0014', 'Registered Nurse', 'RN-40002', NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000015', '10000000-0000-0000-0000-000000000004', '20000000-0000-0000-0000-000000000016', 's.tesfaye@tikuranbessa.et', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Solomon', 'Tesfaye', '+000-USR-0015', 'Hospital Administrator', NULL, NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000016', '10000000-0000-0000-0000-000000000004', '20000000-0000-0000-0000-000000000020', 'h.gebre@tikuranbessa.et', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Hiwot', 'Gebre', '+000-USR-0016', 'Clinical Pharmacist', 'PH-40004', NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000017', '10000000-0000-0000-0000-000000000005', '20000000-0000-0000-0000-000000000021', 't.ndlovu@gsh.co.za', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Thabo', 'Ndlovu', '+000-USR-0017', 'Medical Doctor', 'MD-50001', 'General Practice', TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000018', '10000000-0000-0000-0000-000000000005', '20000000-0000-0000-0000-000000000024', 'n.dlamini@gsh.co.za', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Naledi', 'Dlamini', '+000-USR-0018', 'Registered Nurse', 'RN-50002', NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000019', '10000000-0000-0000-0000-000000000005', '20000000-0000-0000-0000-000000000021', 's.khumalo@gsh.co.za', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Sipho', 'Khumalo', '+000-USR-0019', 'Hospital Administrator', NULL, NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000020', '10000000-0000-0000-0000-000000000005', '20000000-0000-0000-0000-000000000025', 'z.mthembu@gsh.co.za', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Zanele', 'Mthembu', '+000-USR-0020', 'Clinical Pharmacist', 'PH-50004', NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000021', '10000000-0000-0000-0000-000000000006', '20000000-0000-0000-0000-000000000026', 'h.mwinyimkuu@muhimbili.tz', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Hassan', 'Mwinyimkuu', '+000-USR-0021', 'Medical Doctor', 'MD-60001', 'Pediatrics', TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000022', '10000000-0000-0000-0000-000000000006', '20000000-0000-0000-0000-000000000029', 'f.juma@muhimbili.tz', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Fatima', 'Juma', '+000-USR-0022', 'Registered Nurse', 'RN-60002', NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000023', '10000000-0000-0000-0000-000000000006', '20000000-0000-0000-0000-000000000026', 'j.nyerere@muhimbili.tz', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Joseph', 'Nyerere', '+000-USR-0023', 'Hospital Administrator', NULL, NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000024', '10000000-0000-0000-0000-000000000006', '20000000-0000-0000-0000-000000000030', 'r.makonde@muhimbili.tz', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Rehema', 'Makonde', '+000-USR-0024', 'Clinical Pharmacist', 'PH-60004', NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000025', '10000000-0000-0000-0000-000000000007', '20000000-0000-0000-0000-000000000031', 'd.okello@kampalach.ug', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'David', 'Okello', '+000-USR-0025', 'Medical Doctor', 'MD-70001', 'Pediatrics', TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000026', '10000000-0000-0000-0000-000000000007', '20000000-0000-0000-0000-000000000034', 'g.namutebi@kampalach.ug', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Grace', 'Namutebi', '+000-USR-0026', 'Registered Nurse', 'RN-70002', NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000027', '10000000-0000-0000-0000-000000000007', '20000000-0000-0000-0000-000000000031', 'r.ssempala@kampalach.ug', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Robert', 'Ssempala', '+000-USR-0027', 'Hospital Administrator', NULL, NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000028', '10000000-0000-0000-0000-000000000007', '20000000-0000-0000-0000-000000000035', 's.nakamya@kampalach.ug', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Sarah', 'Nakamya', '+000-USR-0028', 'Clinical Pharmacist', 'PH-70004', NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000029', '10000000-0000-0000-0000-000000000008', '20000000-0000-0000-0000-000000000036', 'jp.habimana@kigalihealth.rw', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Jean-Pierre', 'Habimana', '+000-USR-0029', 'Medical Doctor', 'MD-80001', 'Internal Medicine', TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000030', '10000000-0000-0000-0000-000000000008', '20000000-0000-0000-0000-000000000039', 'm.uwimana@kigalihealth.rw', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Marie', 'Uwimana', '+000-USR-0030', 'Registered Nurse', 'RN-80002', NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000031', '10000000-0000-0000-0000-000000000008', '20000000-0000-0000-0000-000000000036', 'e.nshuti@kigalihealth.rw', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Emmanuel', 'Nshuti', '+000-USR-0031', 'Hospital Administrator', NULL, NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000032', '10000000-0000-0000-0000-000000000008', '20000000-0000-0000-0000-000000000040', 'd.mukamana@kigalihealth.rw', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Diane', 'Mukamana', '+000-USR-0032', 'Clinical Pharmacist', 'PH-80004', NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000033', '10000000-0000-0000-0000-000000000009', '20000000-0000-0000-0000-000000000041', 'i.abubakar@abujaspecialist.ng', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Ibrahim', 'Abubakar', '+000-USR-0033', 'Medical Doctor', 'MD-90001', 'General Practice', TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000034', '10000000-0000-0000-0000-000000000009', '20000000-0000-0000-0000-000000000044', 'h.yusuf@abujaspecialist.ng', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Halima', 'Yusuf', '+000-USR-0034', 'Registered Nurse', 'RN-90002', NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000035', '10000000-0000-0000-0000-000000000009', '20000000-0000-0000-0000-000000000041', 'u.bello@abujaspecialist.ng', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Usman', 'Bello', '+000-USR-0035', 'Hospital Administrator', NULL, NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000036', '10000000-0000-0000-0000-000000000009', '20000000-0000-0000-0000-000000000045', 'f.abdullahi@abujaspecialist.ng', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Fatima', 'Abdullahi', '+000-USR-0036', 'Clinical Pharmacist', 'PH-90004', NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000037', '10000000-0000-0000-0000-000000000010', '20000000-0000-0000-0000-000000000046', 'y.benali@casablancami.ma', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Youssef', 'Benali', '+000-USR-0037', 'Medical Doctor', 'MD-10010', 'Family Medicine', TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000038', '10000000-0000-0000-0000-000000000010', '20000000-0000-0000-0000-000000000049', 'fz.elamrani@casablancami.ma', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Fatima-Zahra', 'El Amrani', '+000-USR-0038', 'Registered Nurse', 'RN-10020', NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000039', '10000000-0000-0000-0000-000000000010', '20000000-0000-0000-0000-000000000046', 'a.tazi@casablancami.ma', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Ahmed', 'Tazi', '+000-USR-0039', 'Hospital Administrator', NULL, NULL, TRUE, NOW(), NOW()),
('40000000-0000-0000-0000-000000000040', '10000000-0000-0000-0000-000000000010', '20000000-0000-0000-0000-000000000050', 'k.idrissi@casablancami.ma', '$2a$12$LQv3c1yqBo9SkvXS7QTJp.EX.gZzHk5F5JIvVK5HB5.adaptor1234', 'Khadija', 'Idrissi', '+000-USR-0040', 'Clinical Pharmacist', 'PH-10040', NULL, TRUE, NOW(), NOW());

-- =============================================================================
-- CORE SCHEMA: User-Role Assignments (40 total)
-- =============================================================================

INSERT INTO core.user_roles (user_id, role_id, assigned_at) VALUES
('40000000-0000-0000-0000-000000000001', '30000000-0000-0000-0000-000000000001', NOW()),
('40000000-0000-0000-0000-000000000002', '30000000-0000-0000-0000-000000000002', NOW()),
('40000000-0000-0000-0000-000000000003', '30000000-0000-0000-0000-000000000003', NOW()),
('40000000-0000-0000-0000-000000000004', '30000000-0000-0000-0000-000000000004', NOW()),
('40000000-0000-0000-0000-000000000005', '30000000-0000-0000-0000-000000000005', NOW()),
('40000000-0000-0000-0000-000000000006', '30000000-0000-0000-0000-000000000006', NOW()),
('40000000-0000-0000-0000-000000000007', '30000000-0000-0000-0000-000000000007', NOW()),
('40000000-0000-0000-0000-000000000008', '30000000-0000-0000-0000-000000000008', NOW()),
('40000000-0000-0000-0000-000000000009', '30000000-0000-0000-0000-000000000009', NOW()),
('40000000-0000-0000-0000-000000000010', '30000000-0000-0000-0000-000000000010', NOW()),
('40000000-0000-0000-0000-000000000011', '30000000-0000-0000-0000-000000000011', NOW()),
('40000000-0000-0000-0000-000000000012', '30000000-0000-0000-0000-000000000012', NOW()),
('40000000-0000-0000-0000-000000000013', '30000000-0000-0000-0000-000000000013', NOW()),
('40000000-0000-0000-0000-000000000014', '30000000-0000-0000-0000-000000000014', NOW()),
('40000000-0000-0000-0000-000000000015', '30000000-0000-0000-0000-000000000015', NOW()),
('40000000-0000-0000-0000-000000000016', '30000000-0000-0000-0000-000000000016', NOW()),
('40000000-0000-0000-0000-000000000017', '30000000-0000-0000-0000-000000000017', NOW()),
('40000000-0000-0000-0000-000000000018', '30000000-0000-0000-0000-000000000018', NOW()),
('40000000-0000-0000-0000-000000000019', '30000000-0000-0000-0000-000000000019', NOW()),
('40000000-0000-0000-0000-000000000020', '30000000-0000-0000-0000-000000000020', NOW()),
('40000000-0000-0000-0000-000000000021', '30000000-0000-0000-0000-000000000021', NOW()),
('40000000-0000-0000-0000-000000000022', '30000000-0000-0000-0000-000000000022', NOW()),
('40000000-0000-0000-0000-000000000023', '30000000-0000-0000-0000-000000000023', NOW()),
('40000000-0000-0000-0000-000000000024', '30000000-0000-0000-0000-000000000024', NOW()),
('40000000-0000-0000-0000-000000000025', '30000000-0000-0000-0000-000000000025', NOW()),
('40000000-0000-0000-0000-000000000026', '30000000-0000-0000-0000-000000000026', NOW()),
('40000000-0000-0000-0000-000000000027', '30000000-0000-0000-0000-000000000027', NOW()),
('40000000-0000-0000-0000-000000000028', '30000000-0000-0000-0000-000000000028', NOW()),
('40000000-0000-0000-0000-000000000029', '30000000-0000-0000-0000-000000000029', NOW()),
('40000000-0000-0000-0000-000000000030', '30000000-0000-0000-0000-000000000030', NOW()),
('40000000-0000-0000-0000-000000000031', '30000000-0000-0000-0000-000000000031', NOW()),
('40000000-0000-0000-0000-000000000032', '30000000-0000-0000-0000-000000000032', NOW()),
('40000000-0000-0000-0000-000000000033', '30000000-0000-0000-0000-000000000033', NOW()),
('40000000-0000-0000-0000-000000000034', '30000000-0000-0000-0000-000000000034', NOW()),
('40000000-0000-0000-0000-000000000035', '30000000-0000-0000-0000-000000000035', NOW()),
('40000000-0000-0000-0000-000000000036', '30000000-0000-0000-0000-000000000036', NOW()),
('40000000-0000-0000-0000-000000000037', '30000000-0000-0000-0000-000000000037', NOW()),
('40000000-0000-0000-0000-000000000038', '30000000-0000-0000-0000-000000000038', NOW()),
('40000000-0000-0000-0000-000000000039', '30000000-0000-0000-0000-000000000039', NOW()),
('40000000-0000-0000-0000-000000000040', '30000000-0000-0000-0000-000000000040', NOW());

-- =============================================================================
-- PATIENT SCHEMA: Patients (3 per org = 30 total)
-- =============================================================================

INSERT INTO patient.patients (patient_id, org_id, department_id, medical_record_number, first_name, last_name, date_of_birth, gender, blood_type, phone, email, address, city, state, country, emergency_contact_name, emergency_contact_phone, allergies, notes, is_active, registered_by, created_at, updated_at) VALUES
('50000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', 'MRN-ORG1-001', 'Oluwaseun', 'Adeyemi', '1985-03-15', 'male', 'O+', '+234-801-555-0001', 'o.adeyemi@email.com', '12 Broad Street, Lagos Island', 'Lagos', 'Lagos State', 'Nigeria', 'Bola Adeyemi', '+234-801-555-9001', 'Penicillin allergy', NULL, TRUE, '40000000-0000-0000-0000-000000000003', NOW(), NOW()),
('50000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', 'MRN-ORG1-002', 'Chioma', 'Nwosu', '1992-08-22', 'female', 'A+', '+234-802-555-0002', 'c.nwosu@email.com', '45 Allen Avenue, Ikeja', 'Lagos', 'Lagos State', 'Nigeria', 'Emeka Nwosu', '+234-802-555-9002', NULL, 'Pregnant - 2nd trimester', TRUE, '40000000-0000-0000-0000-000000000003', NOW(), NOW()),
('50000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', 'MRN-ORG1-003', 'Tunde', 'Ogunleye', '1968-11-30', 'male', 'B+', '+234-803-555-0003', 't.ogunleye@email.com', '78 Apapa Road, Ebute Metta', 'Lagos', 'Lagos State', 'Nigeria', 'Folashade Ogunleye', '+234-803-555-9003', 'Sulfa drugs', 'Diabetic patient', TRUE, '40000000-0000-0000-0000-000000000003', NOW(), NOW()),
('50000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000002', '20000000-0000-0000-0000-000000000006', 'MRN-ORG2-001', 'Wambui', 'Njoroge', '1990-05-12', 'female', 'AB+', '+254-722-555-001', 'w.njoroge@email.com', 'Moi Avenue 23, Westlands', 'Nairobi', 'Nairobi County', 'Kenya', 'John Njoroge', '+254-722-555-901', NULL, NULL, TRUE, '40000000-0000-0000-0000-000000000007', NOW(), NOW()),
('50000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000002', '20000000-0000-0000-0000-000000000006', 'MRN-ORG2-002', 'Kevin', 'Ochieng', '2015-02-28', 'male', 'O-', '+254-733-555-002', 'ochieng.parent@email.com', 'Ngong Road 56', 'Nairobi', 'Nairobi County', 'Kenya', 'Mary Ochieng', '+254-733-555-902', 'Peanut allergy', 'Pediatric patient', TRUE, '40000000-0000-0000-0000-000000000007', NOW(), NOW()),
('50000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000002', '20000000-0000-0000-0000-000000000006', 'MRN-ORG2-003', 'Aisha', 'Hassan', '1978-09-05', 'female', 'B-', '+254-711-555-003', 'a.hassan@email.com', 'Eastleigh Section 3', 'Nairobi', 'Nairobi County', 'Kenya', 'Omar Hassan', '+254-711-555-903', NULL, NULL, TRUE, '40000000-0000-0000-0000-000000000007', NOW(), NOW()),
('50000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000003', '20000000-0000-0000-0000-000000000011', 'MRN-ORG3-001', 'Yaw', 'Agyemang', '1955-07-20', 'male', 'A-', '+233-24-555-0001', 'y.agyemang@email.com', 'Osu Oxford Street 15', 'Accra', 'Greater Accra', 'Ghana', 'Ama Agyemang', '+233-24-555-9001', 'Aspirin allergy', 'Hypertensive patient', TRUE, '40000000-0000-0000-0000-000000000011', NOW(), NOW()),
('50000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000003', '20000000-0000-0000-0000-000000000011', 'MRN-ORG3-002', 'Efua', 'Mensah', '2000-01-10', 'female', 'O+', '+233-20-555-0002', 'e.mensah@email.com', 'Cantonments Road 8', 'Accra', 'Greater Accra', 'Ghana', 'Kweku Mensah', '+233-20-555-9002', NULL, NULL, TRUE, '40000000-0000-0000-0000-000000000011', NOW(), NOW()),
('50000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000003', '20000000-0000-0000-0000-000000000011', 'MRN-ORG3-003', 'Kofi', 'Asante', '1988-04-18', 'male', 'AB-', '+233-27-555-0003', 'k.asante@email.com', 'Madina Zongo Junction', 'Accra', 'Greater Accra', 'Ghana', 'Akua Asante', '+233-27-555-9003', NULL, NULL, TRUE, '40000000-0000-0000-0000-000000000011', NOW(), NOW()),
('50000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000004', '20000000-0000-0000-0000-000000000016', 'MRN-ORG4-001', 'Abebe', 'Worku', '1975-12-01', 'male', 'B+', '+251-91-555-0001', 'a.worku@email.com', 'Bole Road, Addis Ababa', 'Addis Ababa', 'Addis Ababa', 'Ethiopia', 'Tigist Worku', '+251-91-555-9001', NULL, NULL, TRUE, '40000000-0000-0000-0000-000000000015', NOW(), NOW()),
('50000000-0000-0000-0000-000000000011', '10000000-0000-0000-0000-000000000004', '20000000-0000-0000-0000-000000000016', 'MRN-ORG4-002', 'Selam', 'Tadesse', '1998-06-25', 'female', 'A+', '+251-92-555-0002', 's.tadesse@email.com', 'Piazza District', 'Addis Ababa', 'Addis Ababa', 'Ethiopia', 'Dawit Tadesse', '+251-92-555-9002', 'Latex allergy', NULL, TRUE, '40000000-0000-0000-0000-000000000015', NOW(), NOW()),
('50000000-0000-0000-0000-000000000012', '10000000-0000-0000-0000-000000000004', '20000000-0000-0000-0000-000000000016', 'MRN-ORG4-003', 'Girma', 'Alemu', '2010-03-14', 'male', 'O+', '+251-93-555-0003', 'alemu.family@email.com', 'Kazanchis Area', 'Addis Ababa', 'Addis Ababa', 'Ethiopia', 'Marta Alemu', '+251-93-555-9003', NULL, 'Pediatric patient - asthma', TRUE, '40000000-0000-0000-0000-000000000015', NOW(), NOW()),
('50000000-0000-0000-0000-000000000013', '10000000-0000-0000-0000-000000000005', '20000000-0000-0000-0000-000000000021', 'MRN-ORG5-001', 'Lindiwe', 'Zulu', '1982-10-08', 'female', 'O+', '+27-82-555-0001', 'l.zulu@email.com', 'Long Street 45, Cape Town', 'Cape Town', 'Western Cape', 'South Africa', 'Mandla Zulu', '+27-82-555-9001', NULL, NULL, TRUE, '40000000-0000-0000-0000-000000000019', NOW(), NOW()),
('50000000-0000-0000-0000-000000000014', '10000000-0000-0000-0000-000000000005', '20000000-0000-0000-0000-000000000021', 'MRN-ORG5-002', 'Pieter', 'van der Merwe', '1960-04-22', 'male', 'A+', '+27-83-555-0002', 'p.vandermerwe@email.com', 'Rondebosch Main Road 12', 'Cape Town', 'Western Cape', 'South Africa', 'Annelie van der Merwe', '+27-83-555-9002', 'Codeine allergy', 'History of cardiac issues', TRUE, '40000000-0000-0000-0000-000000000019', NOW(), NOW()),
('50000000-0000-0000-0000-000000000015', '10000000-0000-0000-0000-000000000005', '20000000-0000-0000-0000-000000000021', 'MRN-ORG5-003', 'Noluthando', 'Mbeki', '1995-11-17', 'female', 'B+', '+27-84-555-0003', 'n.mbeki@email.com', 'Khayelitsha Section B', 'Cape Town', 'Western Cape', 'South Africa', 'Thandiwe Mbeki', '+27-84-555-9003', NULL, NULL, TRUE, '40000000-0000-0000-0000-000000000019', NOW(), NOW()),
('50000000-0000-0000-0000-000000000016', '10000000-0000-0000-0000-000000000006', '20000000-0000-0000-0000-000000000026', 'MRN-ORG6-001', 'Baraka', 'Moshi', '1987-07-30', 'male', 'A+', '+255-75-555-0001', 'b.moshi@email.com', 'Kariakoo Market Street 5', 'Dar es Salaam', 'Dar es Salaam', 'Tanzania', 'Neema Moshi', '+255-75-555-9001', NULL, NULL, TRUE, '40000000-0000-0000-0000-000000000023', NOW(), NOW()),
('50000000-0000-0000-0000-000000000017', '10000000-0000-0000-0000-000000000006', '20000000-0000-0000-0000-000000000026', 'MRN-ORG6-002', 'Zawadi', 'Kimaro', '2003-02-14', 'female', 'O-', '+255-76-555-0002', 'z.kimaro@email.com', 'Msasani Peninsula 22', 'Dar es Salaam', 'Dar es Salaam', 'Tanzania', 'Elias Kimaro', '+255-76-555-9002', 'Ibuprofen allergy', NULL, TRUE, '40000000-0000-0000-0000-000000000023', NOW(), NOW()),
('50000000-0000-0000-0000-000000000018', '10000000-0000-0000-0000-000000000006', '20000000-0000-0000-0000-000000000026', 'MRN-ORG6-003', 'Juma', 'Abdallah', '1970-09-03', 'male', 'B-', '+255-77-555-0003', 'j.abdallah@email.com', 'Kinondoni Road 88', 'Dar es Salaam', 'Dar es Salaam', 'Tanzania', 'Halima Abdallah', '+255-77-555-9003', NULL, 'Chronic back pain', TRUE, '40000000-0000-0000-0000-000000000023', NOW(), NOW()),
('50000000-0000-0000-0000-000000000019', '10000000-0000-0000-0000-000000000007', '20000000-0000-0000-0000-000000000031', 'MRN-ORG7-001', 'Patience', 'Nabirye', '2012-05-20', 'female', 'AB+', '+256-77-555-0001', 'nabirye.family@email.com', 'Wandegeya Road 3', 'Kampala', 'Central Region', 'Uganda', 'Moses Nabirye', '+256-77-555-9001', NULL, 'Pediatric patient', TRUE, '40000000-0000-0000-0000-000000000027', NOW(), NOW()),
('50000000-0000-0000-0000-000000000020', '10000000-0000-0000-0000-000000000007', '20000000-0000-0000-0000-000000000031', 'MRN-ORG7-002', 'Samuel', 'Okot', '1980-01-09', 'male', 'O+', '+256-78-555-0002', 's.okot@email.com', 'Nakasero Hill Lane 7', 'Kampala', 'Central Region', 'Uganda', 'Agnes Okot', '+256-78-555-9002', 'Shellfish allergy', NULL, TRUE, '40000000-0000-0000-0000-000000000027', NOW(), NOW()),
('50000000-0000-0000-0000-000000000021', '10000000-0000-0000-0000-000000000007', '20000000-0000-0000-0000-000000000031', 'MRN-ORG7-003', 'Hope', 'Atuhaire', '1993-08-11', 'female', 'A-', '+256-70-555-0003', 'h.atuhaire@email.com', 'Ntinda Shopping Centre 14', 'Kampala', 'Central Region', 'Uganda', 'Daniel Atuhaire', '+256-70-555-9003', NULL, NULL, TRUE, '40000000-0000-0000-0000-000000000027', NOW(), NOW()),
('50000000-0000-0000-0000-000000000022', '10000000-0000-0000-0000-000000000008', '20000000-0000-0000-0000-000000000036', 'MRN-ORG8-001', 'Olivier', 'Mugabo', '1988-12-25', 'male', 'B+', '+250-78-555-0001', 'o.mugabo@email.com', 'KN 78 Street, Nyarugenge', 'Kigali', 'Kigali City', 'Rwanda', 'Claudine Mugabo', '+250-78-555-9001', NULL, NULL, TRUE, '40000000-0000-0000-0000-000000000031', NOW(), NOW()),
('50000000-0000-0000-0000-000000000023', '10000000-0000-0000-0000-000000000008', '20000000-0000-0000-0000-000000000036', 'MRN-ORG8-002', 'Ange', 'Mukeshimana', '1965-06-18', 'female', 'O+', '+250-72-555-0002', 'a.mukeshimana@email.com', 'KG 11 Avenue, Kicukiro', 'Kigali', 'Kigali City', 'Rwanda', 'Pierre Mukeshimana', '+250-72-555-9002', NULL, 'Diabetic - Type 2', TRUE, '40000000-0000-0000-0000-000000000031', NOW(), NOW()),
('50000000-0000-0000-0000-000000000024', '10000000-0000-0000-0000-000000000008', '20000000-0000-0000-0000-000000000036', 'MRN-ORG8-003', 'Bosco', 'Niyonzima', '2018-03-05', 'male', 'A+', '+250-73-555-0003', 'niyonzima.family@email.com', 'KK 15 Road, Gasabo', 'Kigali', 'Kigali City', 'Rwanda', 'Jacqueline Niyonzima', '+250-73-555-9003', 'Egg allergy', 'Pediatric patient', TRUE, '40000000-0000-0000-0000-000000000031', NOW(), NOW()),
('50000000-0000-0000-0000-000000000025', '10000000-0000-0000-0000-000000000009', '20000000-0000-0000-0000-000000000041', 'MRN-ORG9-001', 'Aminu', 'Danladi', '1972-04-10', 'male', 'O+', '+234-806-555-0001', 'a.danladi@email.com', 'Garki Area 11, Abuja', 'Abuja', 'FCT', 'Nigeria', 'Hauwa Danladi', '+234-806-555-9001', NULL, 'History of malaria', TRUE, '40000000-0000-0000-0000-000000000035', NOW(), NOW()),
('50000000-0000-0000-0000-000000000026', '10000000-0000-0000-0000-000000000009', '20000000-0000-0000-0000-000000000041', 'MRN-ORG9-002', 'Zainab', 'Mohammed', '1999-10-30', 'female', 'AB-', '+234-807-555-0002', 'z.mohammed@email.com', 'Wuse 2, Abuja', 'Abuja', 'FCT', 'Nigeria', 'Bala Mohammed', '+234-807-555-9002', 'Erythromycin allergy', NULL, TRUE, '40000000-0000-0000-0000-000000000035', NOW(), NOW()),
('50000000-0000-0000-0000-000000000027', '10000000-0000-0000-0000-000000000009', '20000000-0000-0000-0000-000000000041', 'MRN-ORG9-003', 'Musa', 'Garba', '2005-07-15', 'male', 'B+', '+234-808-555-0003', 'garba.family@email.com', 'Maitama District, Abuja', 'Abuja', 'FCT', 'Nigeria', 'Aisha Garba', '+234-808-555-9003', NULL, NULL, TRUE, '40000000-0000-0000-0000-000000000035', NOW(), NOW()),
('50000000-0000-0000-0000-000000000028', '10000000-0000-0000-0000-000000000010', '20000000-0000-0000-0000-000000000046', 'MRN-ORG10-001', 'Rachid', 'Bennani', '1983-09-28', 'male', 'A+', '+212-661-555-001', 'r.bennani@email.com', 'Rue Moulay Ismail 30, Maarif', 'Casablanca', 'Casablanca-Settat', 'Morocco', 'Samira Bennani', '+212-661-555-901', NULL, NULL, TRUE, '40000000-0000-0000-0000-000000000039', NOW(), NOW()),
('50000000-0000-0000-0000-000000000029', '10000000-0000-0000-0000-000000000010', '20000000-0000-0000-0000-000000000046', 'MRN-ORG10-002', 'Nadia', 'El Fassi', '1991-02-05', 'female', 'O+', '+212-662-555-002', 'n.elfassi@email.com', 'Boulevard Anfa 55', 'Casablanca', 'Casablanca-Settat', 'Morocco', 'Hassan El Fassi', '+212-662-555-902', 'NSAID allergy', NULL, TRUE, '40000000-0000-0000-0000-000000000039', NOW(), NOW()),
('50000000-0000-0000-0000-000000000030', '10000000-0000-0000-0000-000000000010', '20000000-0000-0000-0000-000000000046', 'MRN-ORG10-003', 'Yassine', 'Chaoui', '2008-11-12', 'male', 'B-', '+212-663-555-003', 'chaoui.family@email.com', 'Quartier Gauthier 18', 'Casablanca', 'Casablanca-Settat', 'Morocco', 'Leila Chaoui', '+212-663-555-903', NULL, 'Pediatric patient - recurring bronchitis', TRUE, '40000000-0000-0000-0000-000000000039', NOW(), NOW());

-- =============================================================================
-- PATIENT SCHEMA: Patient Insurance (15 total, orgs 1-5)
-- =============================================================================

INSERT INTO patient.patient_insurance (insurance_id, patient_id, org_id, provider_name, policy_number, group_number, coverage_type, valid_from, valid_to, is_active, created_at, updated_at) VALUES
('51000000-0000-0000-0000-000000000001', '50000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', 'NHIS Nigeria', 'NHIS-LG-2025-001', 'GRP-NG-100', 'primary', '2025-01-01', '2026-12-31', TRUE, NOW(), NOW()),
('51000000-0000-0000-0000-000000000002', '50000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000001', 'HMO Health Plan', 'HMO-LG-2025-002', 'GRP-NG-200', 'primary', '2025-01-01', '2026-12-31', TRUE, NOW(), NOW()),
('51000000-0000-0000-0000-000000000003', '50000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000001', 'Leadway Health', 'LDW-LG-2025-003', NULL, 'primary', '2025-01-01', '2026-12-31', TRUE, NOW(), NOW()),
('51000000-0000-0000-0000-000000000004', '50000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000002', 'NHIF Kenya', 'NHIF-NB-2025-001', 'GRP-KE-100', 'primary', '2025-01-01', '2026-12-31', TRUE, NOW(), NOW()),
('51000000-0000-0000-0000-000000000005', '50000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000002', 'AAR Healthcare', 'AAR-NB-2025-002', 'GRP-KE-200', 'primary', '2025-01-01', '2026-12-31', TRUE, NOW(), NOW()),
('51000000-0000-0000-0000-000000000006', '50000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000002', 'NHIF Kenya', 'NHIF-NB-2025-003', NULL, 'secondary', '2025-01-01', '2026-12-31', TRUE, NOW(), NOW()),
('51000000-0000-0000-0000-000000000007', '50000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000003', 'NHIS Ghana', 'NHIS-AC-2025-001', 'GRP-GH-100', 'primary', '2025-01-01', '2026-12-31', TRUE, NOW(), NOW()),
('51000000-0000-0000-0000-000000000008', '50000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000003', 'NHIS Ghana', 'NHIS-AC-2025-002', 'GRP-GH-200', 'primary', '2025-01-01', '2026-12-31', TRUE, NOW(), NOW()),
('51000000-0000-0000-0000-000000000009', '50000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000003', 'NHIS Ghana', 'NHIS-AC-2025-003', NULL, 'primary', '2025-01-01', '2026-12-31', TRUE, NOW(), NOW()),
('51000000-0000-0000-0000-000000000010', '50000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000004', 'CBHI Ethiopia', 'CBHI-AA-2025-001', 'GRP-ET-100', 'primary', '2025-01-01', '2026-12-31', TRUE, NOW(), NOW()),
('51000000-0000-0000-0000-000000000011', '50000000-0000-0000-0000-000000000011', '10000000-0000-0000-0000-000000000004', 'CBHI Ethiopia', 'CBHI-AA-2025-002', NULL, 'primary', '2025-01-01', '2026-12-31', TRUE, NOW(), NOW()),
('51000000-0000-0000-0000-000000000012', '50000000-0000-0000-0000-000000000012', '10000000-0000-0000-0000-000000000004', 'CBHI Ethiopia', 'CBHI-AA-2025-003', 'GRP-ET-300', 'primary', '2025-01-01', '2026-12-31', TRUE, NOW(), NOW()),
('51000000-0000-0000-0000-000000000013', '50000000-0000-0000-0000-000000000013', '10000000-0000-0000-0000-000000000005', 'Discovery Health', 'DISC-CT-2025-001', 'GRP-ZA-100', 'primary', '2025-01-01', '2026-12-31', TRUE, NOW(), NOW()),
('51000000-0000-0000-0000-000000000014', '50000000-0000-0000-0000-000000000014', '10000000-0000-0000-0000-000000000005', 'Bonitas Medical Aid', 'BON-CT-2025-002', 'GRP-ZA-200', 'primary', '2025-01-01', '2026-12-31', TRUE, NOW(), NOW()),
('51000000-0000-0000-0000-000000000015', '50000000-0000-0000-0000-000000000015', '10000000-0000-0000-0000-000000000005', 'Discovery Health', 'DISC-CT-2025-003', NULL, 'tertiary', '2025-01-01', '2026-12-31', TRUE, NOW(), NOW());

-- =============================================================================
-- CLINICAL SCHEMA: Appointments (2 per org = 20 total)
-- =============================================================================

INSERT INTO clinical.appointments (appointment_id, org_id, department_id, patient_id, provider_id, scheduled_at, duration_min, status, visit_type, reason, notes, created_by, created_at, updated_at) VALUES
('60000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', '50000000-0000-0000-0000-000000000001', '40000000-0000-0000-0000-000000000001', '2025-03-10 09:00:00+00', 30, 'completed', 'new_patient', 'Persistent headaches and fatigue for two weeks', 'Completed successfully', '40000000-0000-0000-0000-000000000001', NOW(), NOW()),
('60000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', '50000000-0000-0000-0000-000000000002', '40000000-0000-0000-0000-000000000001', '2026-02-15 10:00:00+00', 30, 'scheduled', 'follow_up', 'Prenatal follow-up visit', NULL, '40000000-0000-0000-0000-000000000001', NOW(), NOW()),
('60000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000002', '20000000-0000-0000-0000-000000000006', '50000000-0000-0000-0000-000000000004', '40000000-0000-0000-0000-000000000005', '2025-04-05 08:30:00+00', 30, 'completed', 'routine', 'Annual health checkup', 'Completed successfully', '40000000-0000-0000-0000-000000000005', NOW(), NOW()),
('60000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000002', '20000000-0000-0000-0000-000000000006', '50000000-0000-0000-0000-000000000005', '40000000-0000-0000-0000-000000000005', '2026-03-01 14:00:00+00', 30, 'confirmed', 'new_patient', 'Child vaccination and growth assessment', NULL, '40000000-0000-0000-0000-000000000005', NOW(), NOW()),
('60000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000003', '20000000-0000-0000-0000-000000000011', '50000000-0000-0000-0000-000000000007', '40000000-0000-0000-0000-000000000009', '2025-02-20 11:00:00+00', 30, 'completed', 'consultation', 'Hypertension management review', 'Completed successfully', '40000000-0000-0000-0000-000000000009', NOW(), NOW()),
('60000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000003', '20000000-0000-0000-0000-000000000011', '50000000-0000-0000-0000-000000000009', '40000000-0000-0000-0000-000000000009', '2026-01-20 09:30:00+00', 30, 'scheduled', 'follow_up', 'Post-treatment follow-up', NULL, '40000000-0000-0000-0000-000000000009', NOW(), NOW()),
('60000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000004', '20000000-0000-0000-0000-000000000016', '50000000-0000-0000-0000-000000000010', '40000000-0000-0000-0000-000000000013', '2025-05-15 10:00:00+00', 30, 'completed', 'new_patient', 'Chronic cough and weight loss', 'Completed successfully', '40000000-0000-0000-0000-000000000013', NOW(), NOW()),
('60000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000004', '20000000-0000-0000-0000-000000000016', '50000000-0000-0000-0000-000000000011', '40000000-0000-0000-0000-000000000013', '2026-04-10 08:00:00+00', 30, 'confirmed', 'routine', 'Routine gynecological checkup', NULL, '40000000-0000-0000-0000-000000000013', NOW(), NOW()),
('60000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000005', '20000000-0000-0000-0000-000000000021', '50000000-0000-0000-0000-000000000014', '40000000-0000-0000-0000-000000000017', '2025-01-28 15:30:00+00', 60, 'completed', 'emergency', 'Chest pain and shortness of breath', 'Completed successfully', '40000000-0000-0000-0000-000000000017', NOW(), NOW()),
('60000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000005', '20000000-0000-0000-0000-000000000021', '50000000-0000-0000-0000-000000000015', '40000000-0000-0000-0000-000000000017', '2026-05-05 11:00:00+00', 30, 'scheduled', 'consultation', 'Dermatology consultation for skin rash', NULL, '40000000-0000-0000-0000-000000000017', NOW(), NOW()),
('60000000-0000-0000-0000-000000000011', '10000000-0000-0000-0000-000000000006', '20000000-0000-0000-0000-000000000026', '50000000-0000-0000-0000-000000000016', '40000000-0000-0000-0000-000000000021', '2025-06-01 09:00:00+00', 30, 'completed', 'new_patient', 'Recurring fever and joint pain', 'Completed successfully', '40000000-0000-0000-0000-000000000021', NOW(), NOW()),
('60000000-0000-0000-0000-000000000012', '10000000-0000-0000-0000-000000000006', '20000000-0000-0000-0000-000000000026', '50000000-0000-0000-0000-000000000017', '40000000-0000-0000-0000-000000000021', '2026-03-15 10:30:00+00', 30, 'confirmed', 'follow_up', 'Follow-up after malaria treatment', NULL, '40000000-0000-0000-0000-000000000021', NOW(), NOW()),
('60000000-0000-0000-0000-000000000013', '10000000-0000-0000-0000-000000000007', '20000000-0000-0000-0000-000000000031', '50000000-0000-0000-0000-000000000019', '40000000-0000-0000-0000-000000000025', '2025-04-20 08:00:00+00', 30, 'completed', 'new_patient', 'Child with recurrent ear infections', 'Completed successfully', '40000000-0000-0000-0000-000000000025', NOW(), NOW()),
('60000000-0000-0000-0000-000000000014', '10000000-0000-0000-0000-000000000007', '20000000-0000-0000-0000-000000000031', '50000000-0000-0000-0000-000000000021', '40000000-0000-0000-0000-000000000025', '2026-06-01 14:00:00+00', 30, 'scheduled', 'routine', 'Routine health screening', NULL, '40000000-0000-0000-0000-000000000025', NOW(), NOW()),
('60000000-0000-0000-0000-000000000015', '10000000-0000-0000-0000-000000000008', '20000000-0000-0000-0000-000000000036', '50000000-0000-0000-0000-000000000022', '40000000-0000-0000-0000-000000000029', '2025-03-25 10:00:00+00', 30, 'completed', 'consultation', 'Consultation for persistent stomach pain', 'Completed successfully', '40000000-0000-0000-0000-000000000029', NOW(), NOW()),
('60000000-0000-0000-0000-000000000016', '10000000-0000-0000-0000-000000000008', '20000000-0000-0000-0000-000000000036', '50000000-0000-0000-0000-000000000023', '40000000-0000-0000-0000-000000000029', '2026-02-28 09:00:00+00', 30, 'confirmed', 'follow_up', 'Diabetes management follow-up', NULL, '40000000-0000-0000-0000-000000000029', NOW(), NOW()),
('60000000-0000-0000-0000-000000000017', '10000000-0000-0000-0000-000000000009', '20000000-0000-0000-0000-000000000041', '50000000-0000-0000-0000-000000000025', '40000000-0000-0000-0000-000000000033', '2025-05-08 11:00:00+00', 30, 'completed', 'new_patient', 'Malaria symptoms - fever and chills', 'Completed successfully', '40000000-0000-0000-0000-000000000033', NOW(), NOW()),
('60000000-0000-0000-0000-000000000018', '10000000-0000-0000-0000-000000000009', '20000000-0000-0000-0000-000000000041', '50000000-0000-0000-0000-000000000026', '40000000-0000-0000-0000-000000000033', '2026-04-20 13:00:00+00', 30, 'scheduled', 'consultation', 'Allergy testing consultation', NULL, '40000000-0000-0000-0000-000000000033', NOW(), NOW()),
('60000000-0000-0000-0000-000000000019', '10000000-0000-0000-0000-000000000010', '20000000-0000-0000-0000-000000000046', '50000000-0000-0000-0000-000000000028', '40000000-0000-0000-0000-000000000037', '2025-02-12 09:30:00+00', 30, 'completed', 'routine', 'Annual physical examination', 'Completed successfully', '40000000-0000-0000-0000-000000000037', NOW(), NOW()),
('60000000-0000-0000-0000-000000000020', '10000000-0000-0000-0000-000000000010', '20000000-0000-0000-0000-000000000046', '50000000-0000-0000-0000-000000000030', '40000000-0000-0000-0000-000000000037', '2026-01-10 10:00:00+00', 30, 'confirmed', 'new_patient', 'Pediatric respiratory assessment', NULL, '40000000-0000-0000-0000-000000000037', NOW(), NOW());

-- =============================================================================
-- CLINICAL SCHEMA: Medical Records (1 per completed appointment = 10)
-- =============================================================================

INSERT INTO clinical.medical_records (record_id, org_id, patient_id, appointment_id, provider_id, chief_complaint, history_of_present_illness, examination_findings, treatment_plan, notes, created_at, updated_at) VALUES
('61000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '50000000-0000-0000-0000-000000000001', '60000000-0000-0000-0000-000000000001', '40000000-0000-0000-0000-000000000001', 'Persistent headaches and fatigue', 'Patient reports headaches for 2 weeks, worse in the morning, accompanied by general fatigue and mild dizziness', 'Alert and oriented. BP elevated at 145/92. No papilledema. Neck supple. Heart sounds normal.', 'Lifestyle modifications, antihypertensive medication, follow-up in 2 weeks', NULL, NOW(), NOW()),
('61000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '50000000-0000-0000-0000-000000000004', '60000000-0000-0000-0000-000000000003', '40000000-0000-0000-0000-000000000005', 'Annual health checkup', 'Patient presents for routine annual examination. No acute complaints. Reports occasional knee pain after exercise.', 'General appearance good. BMI within normal range. Heart and lung sounds clear. Abdomen soft, non-tender.', 'Continue current lifestyle. Annual blood work ordered. Return in 12 months.', NULL, NOW(), NOW()),
('61000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000003', '50000000-0000-0000-0000-000000000007', '60000000-0000-0000-0000-000000000005', '40000000-0000-0000-0000-000000000009', 'Hypertension follow-up', 'Patient with known hypertension on Amlodipine 5mg daily. Reports improved BP readings at home. Occasional mild headaches.', 'BP 132/84, improved from previous visit. Fundoscopy normal. No peripheral edema.', 'Continue current medication. Reduce salt intake. Follow-up in 3 months.', NULL, NOW(), NOW()),
('61000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000004', '50000000-0000-0000-0000-000000000010', '60000000-0000-0000-0000-000000000007', '40000000-0000-0000-0000-000000000013', 'Chronic cough and weight loss', 'Patient presents with persistent dry cough for 6 weeks and unintentional weight loss of 5kg. Night sweats reported.', 'Thin appearance, BMI 18.5. Lung auscultation reveals reduced breath sounds in right upper lobe. No lymphadenopathy.', 'Chest X-ray and sputum test ordered. TB screening initiated. Nutritional support recommended.', NULL, NOW(), NOW()),
('61000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000005', '50000000-0000-0000-0000-000000000014', '60000000-0000-0000-0000-000000000009', '40000000-0000-0000-0000-000000000017', 'Chest pain and dyspnea', '62-year-old male with sudden onset chest pain radiating to left arm. History of hypertension and hyperlipidemia.', 'Diaphoretic, anxious. BP 168/95. ECG shows ST-segment changes in leads V1-V4. Troponin pending.', 'Immediate cardiac workup. Aspirin administered. Cardiology consultation requested. Admit for observation.', NULL, NOW(), NOW()),
('61000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000006', '50000000-0000-0000-0000-000000000016', '60000000-0000-0000-0000-000000000011', '40000000-0000-0000-0000-000000000021', 'Recurring fever and joint pain', 'Patient reports intermittent high fever for 5 days with joint pain and body aches. Recent travel to rural area.', 'Temperature 38.8C. Splenomegaly noted. Mild jaundice. Joint tenderness without swelling.', 'Malaria rapid test and blood smear ordered. Antipyretics prescribed. Artemether-Lumefantrine if confirmed positive.', NULL, NOW(), NOW()),
('61000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000007', '50000000-0000-0000-0000-000000000019', '60000000-0000-0000-0000-000000000013', '40000000-0000-0000-0000-000000000025', 'Recurrent ear infections in child', '6-year-old female with 4th episode of ear infection in 6 months. Mother reports decreased hearing and ear tugging.', 'Bilateral otoscopic exam shows erythema and fluid behind tympanic membrane. Mild fever 37.8C. No mastoid tenderness.', 'Amoxicillin course prescribed. ENT referral for evaluation of recurrent otitis media. Audiometry recommended.', NULL, NOW(), NOW()),
('61000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000008', '50000000-0000-0000-0000-000000000022', '60000000-0000-0000-0000-000000000015', '40000000-0000-0000-0000-000000000029', 'Persistent stomach pain', 'Patient reports epigastric pain for 3 weeks, worse after meals. Associated with bloating and occasional nausea.', 'Mild epigastric tenderness on palpation. No guarding or rebound. Bowel sounds normal. No hepatomegaly.', 'Omeprazole 20mg twice daily for 4 weeks. H. pylori testing ordered. Dietary modifications advised.', NULL, NOW(), NOW()),
('61000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000009', '50000000-0000-0000-0000-000000000025', '60000000-0000-0000-0000-000000000017', '40000000-0000-0000-0000-000000000033', 'Malaria symptoms', 'Patient presents with high fever, chills, and rigors for 3 days. Headache and myalgia. Lives in endemic area.', 'Temperature 39.2C. Pale conjunctivae suggesting mild anemia. Spleen palpable 2cm below costal margin.', 'Malaria rapid test positive for P. falciparum. Artemether-Lumefantrine prescribed. Paracetamol for fever. Review in 48 hours.', NULL, NOW(), NOW()),
('61000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000010', '50000000-0000-0000-0000-000000000028', '60000000-0000-0000-0000-000000000019', '40000000-0000-0000-0000-000000000037', 'Annual physical examination', 'Patient presents for routine annual physical. No acute complaints. Active lifestyle, non-smoker. Family history of diabetes.', 'Well-appearing male. BMI 24.5. BP 124/78. Heart regular, no murmurs. Lungs clear. Abdomen soft.', 'Baseline blood work including fasting glucose ordered. Continue healthy lifestyle. Return in 12 months.', NULL, NOW(), NOW());

-- =============================================================================
-- CLINICAL SCHEMA: Vitals (1 per medical record = 10)
-- =============================================================================

INSERT INTO clinical.vitals (vital_id, org_id, patient_id, record_id, recorded_by, temperature_c, blood_pressure_systolic, blood_pressure_diastolic, heart_rate, respiratory_rate, oxygen_saturation, weight_kg, height_cm, bmi, recorded_at, created_at) VALUES
('62000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '50000000-0000-0000-0000-000000000001', '61000000-0000-0000-0000-000000000001', '40000000-0000-0000-0000-000000000002', 36.8, 145, 92, 82, 16, 98.0, 78.5, 175.0, 25.6, '2025-03-10 09:05:00+00', NOW()),
('62000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '50000000-0000-0000-0000-000000000004', '61000000-0000-0000-0000-000000000002', '40000000-0000-0000-0000-000000000006', 36.5, 118, 76, 72, 14, 99.0, 62.0, 165.0, 22.8, '2025-04-05 08:35:00+00', NOW()),
('62000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000003', '50000000-0000-0000-0000-000000000007', '61000000-0000-0000-0000-000000000003', '40000000-0000-0000-0000-000000000010', 36.6, 132, 84, 78, 15, 97.5, 82.0, 170.0, 28.4, '2025-02-20 11:05:00+00', NOW()),
('62000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000004', '50000000-0000-0000-0000-000000000010', '61000000-0000-0000-0000-000000000004', '40000000-0000-0000-0000-000000000014', 37.2, 110, 70, 88, 18, 96.0, 58.0, 172.0, 19.6, '2025-05-15 10:05:00+00', NOW()),
('62000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000005', '50000000-0000-0000-0000-000000000014', '61000000-0000-0000-0000-000000000005', '40000000-0000-0000-0000-000000000018', 36.9, 168, 95, 96, 20, 94.0, 88.0, 178.0, 27.8, '2025-01-28 15:35:00+00', NOW()),
('62000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000006', '50000000-0000-0000-0000-000000000016', '61000000-0000-0000-0000-000000000006', '40000000-0000-0000-0000-000000000022', 38.8, 125, 80, 98, 19, 97.0, 72.0, 176.0, 23.2, '2025-06-01 09:05:00+00', NOW()),
('62000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000007', '50000000-0000-0000-0000-000000000019', '61000000-0000-0000-0000-000000000007', '40000000-0000-0000-0000-000000000026', 37.8, 100, 65, 110, 22, 98.5, 20.5, 112.0, 16.3, '2025-04-20 08:05:00+00', NOW()),
('62000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000008', '50000000-0000-0000-0000-000000000022', '61000000-0000-0000-0000-000000000008', '40000000-0000-0000-0000-000000000030', 36.7, 128, 82, 76, 16, 98.0, 75.0, 180.0, 23.1, '2025-03-25 10:05:00+00', NOW()),
('62000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000009', '50000000-0000-0000-0000-000000000025', '61000000-0000-0000-0000-000000000009', '40000000-0000-0000-0000-000000000034', 39.2, 105, 68, 102, 20, 96.5, 70.0, 168.0, 24.8, '2025-05-08 11:05:00+00', NOW()),
('62000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000010', '50000000-0000-0000-0000-000000000028', '61000000-0000-0000-0000-000000000010', '40000000-0000-0000-0000-000000000038', 36.5, 124, 78, 68, 14, 99.0, 76.0, 182.0, 22.9, '2025-02-12 09:35:00+00', NOW());

-- =============================================================================
-- CLINICAL SCHEMA: Diagnoses (1 per medical record = 10)
-- =============================================================================

INSERT INTO clinical.diagnoses (diagnosis_id, org_id, patient_id, record_id, diagnosed_by, icd_code, description, severity, status, diagnosed_at, resolved_at, created_at, updated_at) VALUES
('63000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '50000000-0000-0000-0000-000000000001', '61000000-0000-0000-0000-000000000001', '40000000-0000-0000-0000-000000000001', 'I10', 'Essential (primary) hypertension', 'moderate', 'active', '2025-03-10 09:30:00+00', NULL, NOW(), NOW()),
('63000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '50000000-0000-0000-0000-000000000004', '61000000-0000-0000-0000-000000000002', '40000000-0000-0000-0000-000000000005', 'Z00.00', 'General adult medical examination without abnormal findings', 'mild', 'resolved', '2025-04-05 09:00:00+00', '2025-04-05 09:00:00+00', NOW(), NOW()),
('63000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000003', '50000000-0000-0000-0000-000000000007', '61000000-0000-0000-0000-000000000003', '40000000-0000-0000-0000-000000000009', 'I10', 'Essential (primary) hypertension - controlled', 'moderate', 'chronic', '2025-02-20 11:30:00+00', NULL, NOW(), NOW()),
('63000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000004', '50000000-0000-0000-0000-000000000010', '61000000-0000-0000-0000-000000000004', '40000000-0000-0000-0000-000000000013', 'A15.0', 'Tuberculosis of lung, confirmed by sputum microscopy', 'severe', 'active', '2025-05-15 10:30:00+00', NULL, NOW(), NOW()),
('63000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000005', '50000000-0000-0000-0000-000000000014', '61000000-0000-0000-0000-000000000005', '40000000-0000-0000-0000-000000000017', 'I21.0', 'Acute ST elevation myocardial infarction of anterior wall', 'critical', 'active', '2025-01-28 16:00:00+00', NULL, NOW(), NOW()),
('63000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000006', '50000000-0000-0000-0000-000000000016', '61000000-0000-0000-0000-000000000006', '40000000-0000-0000-0000-000000000021', 'B50.9', 'Plasmodium falciparum malaria, unspecified', 'moderate', 'resolved', '2025-06-01 09:30:00+00', '2025-06-08 09:00:00+00', NOW(), NOW()),
('63000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000007', '50000000-0000-0000-0000-000000000019', '61000000-0000-0000-0000-000000000007', '40000000-0000-0000-0000-000000000025', 'H66.91', 'Otitis media, unspecified, right ear', 'mild', 'active', '2025-04-20 08:30:00+00', NULL, NOW(), NOW()),
('63000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000008', '50000000-0000-0000-0000-000000000022', '61000000-0000-0000-0000-000000000008', '40000000-0000-0000-0000-000000000029', 'K29.70', 'Gastritis, unspecified, without bleeding', 'moderate', 'active', '2025-03-25 10:30:00+00', NULL, NOW(), NOW()),
('63000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000009', '50000000-0000-0000-0000-000000000025', '61000000-0000-0000-0000-000000000009', '40000000-0000-0000-0000-000000000033', 'B50.9', 'Plasmodium falciparum malaria, unspecified', 'moderate', 'resolved', '2025-05-08 11:30:00+00', '2025-05-12 10:00:00+00', NOW(), NOW()),
('63000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000010', '50000000-0000-0000-0000-000000000028', '61000000-0000-0000-0000-000000000010', '40000000-0000-0000-0000-000000000037', 'Z00.00', 'General adult medical examination without abnormal findings', 'mild', 'resolved', '2025-02-12 10:00:00+00', '2025-02-12 10:00:00+00', NOW(), NOW());

-- =============================================================================
-- PHARMACY SCHEMA: Medications (3 per org = 30 total)
-- =============================================================================

INSERT INTO pharmacy.medications (medication_id, org_id, name, generic_name, category, dosage_form, strength, manufacturer, requires_prescription, is_active, created_at, updated_at) VALUES
('70000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', 'Amoxicillin 500mg', 'Amoxicillin', 'Antibiotics', 'capsule', '500mg', 'Emzor Pharmaceuticals', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000001', 'Paracetamol 500mg', 'Acetaminophen', 'Analgesics', 'tablet', '500mg', 'GlaxoSmithKline', FALSE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000001', 'Coartem', 'Artemether-Lumefantrine', 'Antimalarials', 'tablet', '20/120mg', 'Novartis', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000002', 'Metformin 500mg', 'Metformin Hydrochloride', 'Antidiabetics', 'tablet', '500mg', 'Merck', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000002', 'Amlodipine 5mg', 'Amlodipine Besylate', 'Antihypertensives', 'tablet', '5mg', 'Pfizer', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000002', 'Ibuprofen 400mg', 'Ibuprofen', 'Anti-inflammatory', 'tablet', '400mg', 'Reckitt Benckiser', FALSE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000003', 'Ciprofloxacin 500mg', 'Ciprofloxacin', 'Antibiotics', 'tablet', '500mg', 'Bayer', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000003', 'Omeprazole 20mg', 'Omeprazole', 'Gastrointestinal', 'capsule', '20mg', 'AstraZeneca', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000003', 'Ventolin Inhaler', 'Salbutamol', 'Respiratory', 'inhaler', '100mcg', 'GlaxoSmithKline', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000004', 'Ceftriaxone 1g', 'Ceftriaxone Sodium', 'Antibiotics', 'injection', '1g', 'Roche', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000011', '10000000-0000-0000-0000-000000000004', 'Amoxicillin 500mg', 'Amoxicillin', 'Antibiotics', 'capsule', '500mg', 'Emzor Pharmaceuticals', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000012', '10000000-0000-0000-0000-000000000004', 'Paracetamol 500mg', 'Acetaminophen', 'Analgesics', 'tablet', '500mg', 'GlaxoSmithKline', FALSE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000013', '10000000-0000-0000-0000-000000000005', 'Coartem', 'Artemether-Lumefantrine', 'Antimalarials', 'tablet', '20/120mg', 'Novartis', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000014', '10000000-0000-0000-0000-000000000005', 'Metformin 500mg', 'Metformin Hydrochloride', 'Antidiabetics', 'tablet', '500mg', 'Merck', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000015', '10000000-0000-0000-0000-000000000005', 'Amlodipine 5mg', 'Amlodipine Besylate', 'Antihypertensives', 'tablet', '5mg', 'Pfizer', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000016', '10000000-0000-0000-0000-000000000006', 'Ibuprofen 400mg', 'Ibuprofen', 'Anti-inflammatory', 'tablet', '400mg', 'Reckitt Benckiser', FALSE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000017', '10000000-0000-0000-0000-000000000006', 'Ciprofloxacin 500mg', 'Ciprofloxacin', 'Antibiotics', 'tablet', '500mg', 'Bayer', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000018', '10000000-0000-0000-0000-000000000006', 'Omeprazole 20mg', 'Omeprazole', 'Gastrointestinal', 'capsule', '20mg', 'AstraZeneca', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000019', '10000000-0000-0000-0000-000000000007', 'Ventolin Inhaler', 'Salbutamol', 'Respiratory', 'inhaler', '100mcg', 'GlaxoSmithKline', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000020', '10000000-0000-0000-0000-000000000007', 'Ceftriaxone 1g', 'Ceftriaxone Sodium', 'Antibiotics', 'injection', '1g', 'Roche', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000021', '10000000-0000-0000-0000-000000000007', 'Amoxicillin 500mg', 'Amoxicillin', 'Antibiotics', 'capsule', '500mg', 'Emzor Pharmaceuticals', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000022', '10000000-0000-0000-0000-000000000008', 'Paracetamol 500mg', 'Acetaminophen', 'Analgesics', 'tablet', '500mg', 'GlaxoSmithKline', FALSE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000023', '10000000-0000-0000-0000-000000000008', 'Coartem', 'Artemether-Lumefantrine', 'Antimalarials', 'tablet', '20/120mg', 'Novartis', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000024', '10000000-0000-0000-0000-000000000008', 'Metformin 500mg', 'Metformin Hydrochloride', 'Antidiabetics', 'tablet', '500mg', 'Merck', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000025', '10000000-0000-0000-0000-000000000009', 'Amlodipine 5mg', 'Amlodipine Besylate', 'Antihypertensives', 'tablet', '5mg', 'Pfizer', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000026', '10000000-0000-0000-0000-000000000009', 'Ibuprofen 400mg', 'Ibuprofen', 'Anti-inflammatory', 'tablet', '400mg', 'Reckitt Benckiser', FALSE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000027', '10000000-0000-0000-0000-000000000009', 'Ciprofloxacin 500mg', 'Ciprofloxacin', 'Antibiotics', 'tablet', '500mg', 'Bayer', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000028', '10000000-0000-0000-0000-000000000010', 'Omeprazole 20mg', 'Omeprazole', 'Gastrointestinal', 'capsule', '20mg', 'AstraZeneca', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000029', '10000000-0000-0000-0000-000000000010', 'Ventolin Inhaler', 'Salbutamol', 'Respiratory', 'inhaler', '100mcg', 'GlaxoSmithKline', TRUE, TRUE, NOW(), NOW()),
('70000000-0000-0000-0000-000000000030', '10000000-0000-0000-0000-000000000010', 'Ceftriaxone 1g', 'Ceftriaxone Sodium', 'Antibiotics', 'injection', '1g', 'Roche', TRUE, TRUE, NOW(), NOW());

-- =============================================================================
-- PHARMACY SCHEMA: Prescriptions (1 per completed appointment = 10)
-- =============================================================================

INSERT INTO pharmacy.prescriptions (prescription_id, org_id, patient_id, prescribed_by, appointment_id, status, notes, prescribed_at, created_at, updated_at) VALUES
('71000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '50000000-0000-0000-0000-000000000001', '40000000-0000-0000-0000-000000000001', '60000000-0000-0000-0000-000000000001', 'dispensed', NULL, '2025-03-10 09:30:00+00', NOW(), NOW()),
('71000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '50000000-0000-0000-0000-000000000004', '40000000-0000-0000-0000-000000000005', '60000000-0000-0000-0000-000000000003', 'dispensed', NULL, '2025-04-05 09:00:00+00', NOW(), NOW()),
('71000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000003', '50000000-0000-0000-0000-000000000007', '40000000-0000-0000-0000-000000000009', '60000000-0000-0000-0000-000000000005', 'dispensed', NULL, '2025-02-20 11:30:00+00', NOW(), NOW()),
('71000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000004', '50000000-0000-0000-0000-000000000010', '40000000-0000-0000-0000-000000000013', '60000000-0000-0000-0000-000000000007', 'dispensed', NULL, '2025-05-15 10:30:00+00', NOW(), NOW()),
('71000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000005', '50000000-0000-0000-0000-000000000014', '40000000-0000-0000-0000-000000000017', '60000000-0000-0000-0000-000000000009', 'dispensed', NULL, '2025-01-28 16:00:00+00', NOW(), NOW()),
('71000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000006', '50000000-0000-0000-0000-000000000016', '40000000-0000-0000-0000-000000000021', '60000000-0000-0000-0000-000000000011', 'dispensed', NULL, '2025-06-01 09:30:00+00', NOW(), NOW()),
('71000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000007', '50000000-0000-0000-0000-000000000019', '40000000-0000-0000-0000-000000000025', '60000000-0000-0000-0000-000000000013', 'dispensed', NULL, '2025-04-20 08:30:00+00', NOW(), NOW()),
('71000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000008', '50000000-0000-0000-0000-000000000022', '40000000-0000-0000-0000-000000000029', '60000000-0000-0000-0000-000000000015', 'pending', NULL, '2025-03-25 10:30:00+00', NOW(), NOW()),
('71000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000009', '50000000-0000-0000-0000-000000000025', '40000000-0000-0000-0000-000000000033', '60000000-0000-0000-0000-000000000017', 'dispensed', NULL, '2025-05-08 11:30:00+00', NOW(), NOW()),
('71000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000010', '50000000-0000-0000-0000-000000000028', '40000000-0000-0000-0000-000000000037', '60000000-0000-0000-0000-000000000019', 'pending', NULL, '2025-02-12 10:00:00+00', NOW(), NOW());

-- =============================================================================
-- PHARMACY SCHEMA: Prescription Items (15 total)
-- =============================================================================

INSERT INTO pharmacy.prescription_items (item_id, prescription_id, medication_id, dosage, frequency, duration, quantity, instructions, is_dispensed, dispensed_by, dispensed_at, created_at) VALUES
('72000000-0000-0000-0000-000000000001', '71000000-0000-0000-0000-000000000001', '70000000-0000-0000-0000-000000000001', '500mg', 'Three times daily', '7 days', 21, 'Take after meals with water', TRUE, '40000000-0000-0000-0000-000000000004', '2025-03-10 09:30:00+00', NOW()),
('72000000-0000-0000-0000-000000000002', '71000000-0000-0000-0000-000000000001', '70000000-0000-0000-0000-000000000002', '500mg', 'As needed', '5 days', 10, 'Take for pain or fever, maximum 4 per day', TRUE, '40000000-0000-0000-0000-000000000004', '2025-03-10 09:30:00+00', NOW()),
('72000000-0000-0000-0000-000000000003', '71000000-0000-0000-0000-000000000002', '70000000-0000-0000-0000-000000000004', '500mg', 'Twice daily', '30 days', 60, 'Take with meals for blood sugar control', TRUE, '40000000-0000-0000-0000-000000000008', '2025-04-05 09:00:00+00', NOW()),
('72000000-0000-0000-0000-000000000004', '71000000-0000-0000-0000-000000000002', '70000000-0000-0000-0000-000000000005', '5mg', 'Once daily', '30 days', 30, 'Take in the morning', TRUE, '40000000-0000-0000-0000-000000000008', '2025-04-05 09:00:00+00', NOW()),
('72000000-0000-0000-0000-000000000005', '71000000-0000-0000-0000-000000000003', '70000000-0000-0000-0000-000000000007', '500mg', 'Twice daily', '10 days', 20, 'Complete the full course of antibiotics', TRUE, '40000000-0000-0000-0000-000000000012', '2025-02-20 11:30:00+00', NOW()),
('72000000-0000-0000-0000-000000000006', '71000000-0000-0000-0000-000000000003', '70000000-0000-0000-0000-000000000008', '20mg', 'Once daily', '14 days', 14, 'Take 30 minutes before breakfast', TRUE, '40000000-0000-0000-0000-000000000012', '2025-02-20 11:30:00+00', NOW()),
('72000000-0000-0000-0000-000000000007', '71000000-0000-0000-0000-000000000004', '70000000-0000-0000-0000-000000000010', '1g', 'Once daily', '14 days', 14, 'IV administration by healthcare provider', TRUE, '40000000-0000-0000-0000-000000000016', '2025-05-15 10:30:00+00', NOW()),
('72000000-0000-0000-0000-000000000008', '71000000-0000-0000-0000-000000000004', '70000000-0000-0000-0000-000000000011', '500mg', 'Three times daily', '7 days', 21, 'Take after meals with water', TRUE, '40000000-0000-0000-0000-000000000016', '2025-05-15 10:30:00+00', NOW()),
('72000000-0000-0000-0000-000000000009', '71000000-0000-0000-0000-000000000005', '70000000-0000-0000-0000-000000000013', '20/120mg', 'Twice daily', '3 days', 6, 'Complete full antimalarial course', TRUE, '40000000-0000-0000-0000-000000000020', '2025-01-28 16:00:00+00', NOW()),
('72000000-0000-0000-0000-000000000010', '71000000-0000-0000-0000-000000000005', '70000000-0000-0000-0000-000000000014', '500mg', 'Twice daily', '30 days', 60, 'Take with meals for blood sugar control', TRUE, '40000000-0000-0000-0000-000000000020', '2025-01-28 16:00:00+00', NOW()),
('72000000-0000-0000-0000-000000000011', '71000000-0000-0000-0000-000000000006', '70000000-0000-0000-0000-000000000016', '400mg', 'Three times daily', '5 days', 15, 'Take with food to reduce stomach upset', TRUE, '40000000-0000-0000-0000-000000000024', '2025-06-01 09:30:00+00', NOW()),
('72000000-0000-0000-0000-000000000012', '71000000-0000-0000-0000-000000000007', '70000000-0000-0000-0000-000000000019', '100mcg', 'As needed', '30 days', 1, 'Two puffs as needed for wheeze, max 8 puffs per day', TRUE, '40000000-0000-0000-0000-000000000028', '2025-04-20 08:30:00+00', NOW()),
('72000000-0000-0000-0000-000000000013', '71000000-0000-0000-0000-000000000008', '70000000-0000-0000-0000-000000000022', '500mg', 'Twice daily', '5 days', 10, 'Take for fever relief', FALSE, NULL, NULL, NOW()),
('72000000-0000-0000-0000-000000000014', '71000000-0000-0000-0000-000000000009', '70000000-0000-0000-0000-000000000025', '5mg', 'Once daily', '30 days', 30, 'Take in the morning, monitor blood pressure', TRUE, '40000000-0000-0000-0000-000000000036', '2025-05-08 11:30:00+00', NOW()),
('72000000-0000-0000-0000-000000000015', '71000000-0000-0000-0000-000000000010', '70000000-0000-0000-0000-000000000028', '20mg', 'Twice daily', '28 days', 56, 'Take 30 minutes before meals', FALSE, NULL, NULL, NOW());

-- =============================================================================
-- PHARMACY SCHEMA: Inventory (1 per medication = 30)
-- =============================================================================

INSERT INTO pharmacy.inventory (inventory_id, org_id, medication_id, batch_number, quantity_in_stock, reorder_level, unit_cost, expiry_date, last_restocked, updated_by, created_at, updated_at) VALUES
('73000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '70000000-0000-0000-0000-000000000001', 'BATCH-2025-001', 200, 20, 150.00, '2027-03-15', '2025-06-01 08:00:00+00', '40000000-0000-0000-0000-000000000004', NOW(), NOW()),
('73000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000001', '70000000-0000-0000-0000-000000000002', 'BATCH-2025-002', 500, 30, 50.00, '2027-06-30', '2025-06-02 08:00:00+00', '40000000-0000-0000-0000-000000000004', NOW(), NOW()),
('73000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000001', '70000000-0000-0000-0000-000000000003', 'BATCH-2025-003', 150, 40, 800.00, '2026-12-31', '2025-06-03 08:00:00+00', '40000000-0000-0000-0000-000000000004', NOW(), NOW()),
('73000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000002', '70000000-0000-0000-0000-000000000004', 'BATCH-2025-004', 300, 50, 200.00, '2027-09-15', '2025-06-04 08:00:00+00', '40000000-0000-0000-0000-000000000008', NOW(), NOW()),
('73000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000002', '70000000-0000-0000-0000-000000000005', 'BATCH-2025-005', 250, 10, 300.00, '2027-01-31', '2025-06-05 08:00:00+00', '40000000-0000-0000-0000-000000000008', NOW(), NOW()),
('73000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000002', '70000000-0000-0000-0000-000000000006', 'BATCH-2025-006', 400, 20, 100.00, '2026-11-30', '2025-06-06 08:00:00+00', '40000000-0000-0000-0000-000000000008', NOW(), NOW()),
('73000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000003', '70000000-0000-0000-0000-000000000007', 'BATCH-2025-007', 180, 30, 450.00, '2027-04-30', '2025-06-07 08:00:00+00', '40000000-0000-0000-0000-000000000012', NOW(), NOW()),
('73000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000003', '70000000-0000-0000-0000-000000000008', 'BATCH-2025-008', 220, 40, 350.00, '2027-08-15', '2025-06-08 08:00:00+00', '40000000-0000-0000-0000-000000000012', NOW(), NOW()),
('73000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000003', '70000000-0000-0000-0000-000000000009', 'BATCH-2025-009', 50, 50, 2500.00, '2026-10-31', '2025-06-09 08:00:00+00', '40000000-0000-0000-0000-000000000012', NOW(), NOW()),
('73000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000004', '70000000-0000-0000-0000-000000000010', 'BATCH-2025-010', 80, 10, 3500.00, '2027-02-28', '2025-06-10 08:00:00+00', '40000000-0000-0000-0000-000000000016', NOW(), NOW()),
('73000000-0000-0000-0000-000000000011', '10000000-0000-0000-0000-000000000004', '70000000-0000-0000-0000-000000000011', 'BATCH-2025-011', 175, 20, 150.00, '2027-05-15', '2025-06-11 08:00:00+00', '40000000-0000-0000-0000-000000000016', NOW(), NOW()),
('73000000-0000-0000-0000-000000000012', '10000000-0000-0000-0000-000000000004', '70000000-0000-0000-0000-000000000012', 'BATCH-2025-012', 450, 30, 50.00, '2027-07-31', '2025-06-12 08:00:00+00', '40000000-0000-0000-0000-000000000016', NOW(), NOW()),
('73000000-0000-0000-0000-000000000013', '10000000-0000-0000-0000-000000000005', '70000000-0000-0000-0000-000000000013', 'BATCH-2025-013', 130, 40, 800.00, '2026-09-30', '2025-06-13 08:00:00+00', '40000000-0000-0000-0000-000000000020', NOW(), NOW()),
('73000000-0000-0000-0000-000000000014', '10000000-0000-0000-0000-000000000005', '70000000-0000-0000-0000-000000000014', 'BATCH-2025-014', 280, 50, 200.00, '2027-10-15', '2025-06-14 08:00:00+00', '40000000-0000-0000-0000-000000000020', NOW(), NOW()),
('73000000-0000-0000-0000-000000000015', '10000000-0000-0000-0000-000000000005', '70000000-0000-0000-0000-000000000015', 'BATCH-2025-015', 200, 10, 300.00, '2027-03-31', '2025-06-15 08:00:00+00', '40000000-0000-0000-0000-000000000020', NOW(), NOW()),
('73000000-0000-0000-0000-000000000016', '10000000-0000-0000-0000-000000000006', '70000000-0000-0000-0000-000000000016', 'BATCH-2025-016', 350, 20, 100.00, '2026-12-15', '2025-06-16 08:00:00+00', '40000000-0000-0000-0000-000000000024', NOW(), NOW()),
('73000000-0000-0000-0000-000000000017', '10000000-0000-0000-0000-000000000006', '70000000-0000-0000-0000-000000000017', 'BATCH-2025-017', 160, 30, 450.00, '2027-06-15', '2025-06-17 08:00:00+00', '40000000-0000-0000-0000-000000000024', NOW(), NOW()),
('73000000-0000-0000-0000-000000000018', '10000000-0000-0000-0000-000000000006', '70000000-0000-0000-0000-000000000018', 'BATCH-2025-018', 190, 40, 350.00, '2027-09-30', '2025-06-18 08:00:00+00', '40000000-0000-0000-0000-000000000024', NOW(), NOW()),
('73000000-0000-0000-0000-000000000019', '10000000-0000-0000-0000-000000000007', '70000000-0000-0000-0000-000000000019', 'BATCH-2025-019', 45, 50, 2500.00, '2026-11-15', '2025-06-19 08:00:00+00', '40000000-0000-0000-0000-000000000028', NOW(), NOW()),
('73000000-0000-0000-0000-000000000020', '10000000-0000-0000-0000-000000000007', '70000000-0000-0000-0000-000000000020', 'BATCH-2025-020', 70, 10, 3500.00, '2027-04-15', '2025-06-20 08:00:00+00', '40000000-0000-0000-0000-000000000028', NOW(), NOW()),
('73000000-0000-0000-0000-000000000021', '10000000-0000-0000-0000-000000000007', '70000000-0000-0000-0000-000000000021', 'BATCH-2025-021', 210, 20, 150.00, '2027-07-15', '2025-06-21 08:00:00+00', '40000000-0000-0000-0000-000000000028', NOW(), NOW()),
('73000000-0000-0000-0000-000000000022', '10000000-0000-0000-0000-000000000008', '70000000-0000-0000-0000-000000000022', 'BATCH-2025-022', 480, 30, 50.00, '2027-08-31', '2025-06-22 08:00:00+00', '40000000-0000-0000-0000-000000000032', NOW(), NOW()),
('73000000-0000-0000-0000-000000000023', '10000000-0000-0000-0000-000000000008', '70000000-0000-0000-0000-000000000023', 'BATCH-2025-023', 140, 40, 800.00, '2026-10-15', '2025-06-23 08:00:00+00', '40000000-0000-0000-0000-000000000032', NOW(), NOW()),
('73000000-0000-0000-0000-000000000024', '10000000-0000-0000-0000-000000000008', '70000000-0000-0000-0000-000000000024', 'BATCH-2025-024', 310, 50, 200.00, '2027-11-15', '2025-06-24 08:00:00+00', '40000000-0000-0000-0000-000000000032', NOW(), NOW()),
('73000000-0000-0000-0000-000000000025', '10000000-0000-0000-0000-000000000009', '70000000-0000-0000-0000-000000000025', 'BATCH-2025-025', 230, 10, 300.00, '2027-05-31', '2025-06-25 08:00:00+00', '40000000-0000-0000-0000-000000000036', NOW(), NOW()),
('73000000-0000-0000-0000-000000000026', '10000000-0000-0000-0000-000000000009', '70000000-0000-0000-0000-000000000026', 'BATCH-2025-026', 380, 20, 100.00, '2026-12-31', '2025-06-26 08:00:00+00', '40000000-0000-0000-0000-000000000036', NOW(), NOW()),
('73000000-0000-0000-0000-000000000027', '10000000-0000-0000-0000-000000000009', '70000000-0000-0000-0000-000000000027', 'BATCH-2025-027', 170, 30, 450.00, '2027-07-31', '2025-06-27 08:00:00+00', '40000000-0000-0000-0000-000000000036', NOW(), NOW()),
('73000000-0000-0000-0000-000000000028', '10000000-0000-0000-0000-000000000010', '70000000-0000-0000-0000-000000000028', 'BATCH-2025-028', 200, 40, 350.00, '2027-10-31', '2025-06-28 08:00:00+00', '40000000-0000-0000-0000-000000000040', NOW(), NOW()),
('73000000-0000-0000-0000-000000000029', '10000000-0000-0000-0000-000000000010', '70000000-0000-0000-0000-000000000029', 'BATCH-2025-029', 55, 50, 2500.00, '2026-09-15', '2025-06-01 08:00:00+00', '40000000-0000-0000-0000-000000000040', NOW(), NOW()),
('73000000-0000-0000-0000-000000000030', '10000000-0000-0000-0000-000000000010', '70000000-0000-0000-0000-000000000030', 'BATCH-2025-030', 75, 10, 3500.00, '2027-06-30', '2025-06-02 08:00:00+00', '40000000-0000-0000-0000-000000000040', NOW(), NOW());

-- =============================================================================
-- BILLING SCHEMA: Invoices (1 per completed appointment = 10)
-- =============================================================================

INSERT INTO billing.invoices (invoice_id, org_id, patient_id, department_id, appointment_id, invoice_number, status, subtotal, tax_amount, discount_amount, total_amount, amount_paid, currency, due_date, notes, created_by, created_at, updated_at) VALUES
('80000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '50000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', '60000000-0000-0000-0000-000000000001', 'INV-ORG1-2025-001', 'paid', 15000.00, 1125.00, 0.00, 16125.00, 16125.00, 'NGN', '2025-04-09', NULL, '40000000-0000-0000-0000-000000000003', NOW(), NOW()),
('80000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '50000000-0000-0000-0000-000000000004', '20000000-0000-0000-0000-000000000006', '60000000-0000-0000-0000-000000000003', 'INV-ORG2-2025-002', 'paid', 8500.00, 637.50, 500.00, 8637.50, 8637.50, 'KES', '2025-05-05', NULL, '40000000-0000-0000-0000-000000000007', NOW(), NOW()),
('80000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000003', '50000000-0000-0000-0000-000000000007', '20000000-0000-0000-0000-000000000011', '60000000-0000-0000-0000-000000000005', 'INV-ORG3-2025-003', 'paid', 3200.00, 240.00, 0.00, 3440.00, 3440.00, 'GHS', '2025-03-22', NULL, '40000000-0000-0000-0000-000000000011', NOW(), NOW()),
('80000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000004', '50000000-0000-0000-0000-000000000010', '20000000-0000-0000-0000-000000000016', '60000000-0000-0000-0000-000000000007', 'INV-ORG4-2025-004', 'paid', 12000.00, 900.00, 1000.00, 11900.00, 11900.00, 'ETB', '2025-06-14', NULL, '40000000-0000-0000-0000-000000000015', NOW(), NOW()),
('80000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000005', '50000000-0000-0000-0000-000000000014', '20000000-0000-0000-0000-000000000021', '60000000-0000-0000-0000-000000000009', 'INV-ORG5-2025-005', 'paid', 45000.00, 3375.00, 0.00, 48375.00, 48375.00, 'ZAR', '2025-02-27', NULL, '40000000-0000-0000-0000-000000000019', NOW(), NOW()),
('80000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000006', '50000000-0000-0000-0000-000000000016', '20000000-0000-0000-0000-000000000026', '60000000-0000-0000-0000-000000000011', 'INV-ORG6-2025-006', 'paid', 6500.00, 487.50, 0.00, 6987.50, 6987.50, 'TZS', '2025-07-01', NULL, '40000000-0000-0000-0000-000000000023', NOW(), NOW()),
('80000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000007', '50000000-0000-0000-0000-000000000019', '20000000-0000-0000-0000-000000000031', '60000000-0000-0000-0000-000000000013', 'INV-ORG7-2025-007', 'paid', 4800.00, 360.00, 200.00, 4960.00, 4960.00, 'UGX', '2025-05-20', NULL, '40000000-0000-0000-0000-000000000027', NOW(), NOW()),
('80000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000008', '50000000-0000-0000-0000-000000000022', '20000000-0000-0000-0000-000000000036', '60000000-0000-0000-0000-000000000015', 'INV-ORG8-2025-008', 'paid', 9200.00, 690.00, 0.00, 9890.00, 9890.00, 'RWF', '2025-04-24', NULL, '40000000-0000-0000-0000-000000000031', NOW(), NOW()),
('80000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000009', '50000000-0000-0000-0000-000000000025', '20000000-0000-0000-0000-000000000041', '60000000-0000-0000-0000-000000000017', 'INV-ORG9-2025-009', 'issued', 7500.00, 562.50, 0.00, 8062.50, 0.00, 'NGN', '2025-06-07', NULL, '40000000-0000-0000-0000-000000000035', NOW(), NOW()),
('80000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000010', '50000000-0000-0000-0000-000000000028', '20000000-0000-0000-0000-000000000046', '60000000-0000-0000-0000-000000000019', 'INV-ORG10-2025-010', 'issued', 5000.00, 375.00, 500.00, 4875.00, 0.00, 'MAD', '2025-03-14', NULL, '40000000-0000-0000-0000-000000000039', NOW(), NOW());

-- =============================================================================
-- BILLING SCHEMA: Invoice Items (15 total)
-- =============================================================================

INSERT INTO billing.invoice_items (item_id, invoice_id, description, quantity, unit_price, total_price, item_type, created_at) VALUES
('81000000-0000-0000-0000-000000000001', '80000000-0000-0000-0000-000000000001', 'General consultation - new patient', 1, 10000.00, 10000.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000002', '80000000-0000-0000-0000-000000000001', 'Amoxicillin 500mg x 21 capsules', 21, 238.10, 5000.00, 'medication', NOW()),
('81000000-0000-0000-0000-000000000003', '80000000-0000-0000-0000-000000000002', 'Routine health checkup consultation', 1, 5000.00, 5000.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000004', '80000000-0000-0000-0000-000000000002', 'Complete blood count (CBC)', 1, 3500.00, 3500.00, 'lab_test', NOW()),
('81000000-0000-0000-0000-000000000005', '80000000-0000-0000-0000-000000000003', 'Hypertension management consultation', 1, 2000.00, 2000.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000006', '80000000-0000-0000-0000-000000000003', 'Omeprazole 20mg x 14 capsules', 14, 85.71, 1200.00, 'medication', NOW()),
('81000000-0000-0000-0000-000000000007', '80000000-0000-0000-0000-000000000004', 'Specialist consultation - pulmonology', 1, 8000.00, 8000.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000008', '80000000-0000-0000-0000-000000000004', 'Chest X-ray and TB screening', 1, 4000.00, 4000.00, 'lab_test', NOW()),
('81000000-0000-0000-0000-000000000009', '80000000-0000-0000-0000-000000000005', 'Emergency consultation - cardiology', 1, 35000.00, 35000.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000010', '80000000-0000-0000-0000-000000000005', 'Cardiac monitoring - 24 hours', 1, 10000.00, 10000.00, 'procedure', NOW()),
('81000000-0000-0000-0000-000000000011', '80000000-0000-0000-0000-000000000006', 'General consultation - new patient', 1, 6500.00, 6500.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000012', '80000000-0000-0000-0000-000000000007', 'Pediatric consultation', 1, 4800.00, 4800.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000013', '80000000-0000-0000-0000-000000000008', 'Gastroenterology consultation', 1, 9200.00, 9200.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000014', '80000000-0000-0000-0000-000000000009', 'General consultation and malaria treatment', 1, 7500.00, 7500.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000015', '80000000-0000-0000-0000-000000000010', 'Annual physical examination', 1, 5000.00, 5000.00, 'consultation', NOW());

-- =============================================================================
-- BILLING SCHEMA: Payments (8 total, for paid invoices)
-- =============================================================================

INSERT INTO billing.payments (payment_id, org_id, invoice_id, amount, payment_method, reference_number, status, received_by, paid_at, notes, created_at) VALUES
('82000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '80000000-0000-0000-0000-000000000001', 16125.00, 'bank_transfer', 'TRF-LUTH-2025-001', 'completed', '40000000-0000-0000-0000-000000000003', '2025-03-12 14:00:00+00', NULL, NOW()),
('82000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '80000000-0000-0000-0000-000000000002', 8637.50, 'mobile_money', 'MPESA-NMH-2025-001', 'completed', '40000000-0000-0000-0000-000000000007', '2025-04-08 10:00:00+00', NULL, NOW()),
('82000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000003', '80000000-0000-0000-0000-000000000003', 3440.00, 'insurance', 'INS-NHIS-GH-2025-001', 'completed', '40000000-0000-0000-0000-000000000011', '2025-02-25 11:00:00+00', NULL, NOW()),
('82000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000004', '80000000-0000-0000-0000-000000000004', 11900.00, 'cash', 'CASH-TAH-2025-001', 'completed', '40000000-0000-0000-0000-000000000015', '2025-05-15 15:00:00+00', NULL, NOW()),
('82000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000005', '80000000-0000-0000-0000-000000000005', 48375.00, 'card', 'CARD-GSH-2025-001', 'completed', '40000000-0000-0000-0000-000000000019', '2025-01-30 09:00:00+00', NULL, NOW()),
('82000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000006', '80000000-0000-0000-0000-000000000006', 6987.50, 'mobile_money', 'TIGO-MHC-2025-001', 'completed', '40000000-0000-0000-0000-000000000023', '2025-06-03 12:00:00+00', NULL, NOW()),
('82000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000007', '80000000-0000-0000-0000-000000000007', 4960.00, 'cash', 'CASH-KCH-2025-001', 'completed', '40000000-0000-0000-0000-000000000027', '2025-04-22 14:00:00+00', NULL, NOW()),
('82000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000008', '80000000-0000-0000-0000-000000000008', 9890.00, 'bank_transfer', 'TRF-KHP-2025-001', 'completed', '40000000-0000-0000-0000-000000000031', '2025-03-28 10:00:00+00', NULL, NOW());

-- =============================================================================
-- BILLING SCHEMA: Additional Invoices (20 more, IDs 011-030)
-- Statuses: overdue, draft, partially_paid, cancelled, paid
-- =============================================================================

INSERT INTO billing.invoices (invoice_id, org_id, patient_id, department_id, appointment_id, invoice_number, status, subtotal, tax_amount, discount_amount, total_amount, amount_paid, currency, due_date, notes, created_by, created_at, updated_at) VALUES
-- Org 1 (Nigeria Lagos, NGN)
('80000000-0000-0000-0000-000000000011', '10000000-0000-0000-0000-000000000001', '50000000-0000-0000-0000-000000000002', '20000000-0000-0000-0000-000000000004', NULL, 'INV-ORG1-2025-011', 'overdue',         25000.00,  1875.00,     0.00,  26875.00,      0.00, 'NGN', '2025-07-01', 'Emergency visit - patient defaulted on payment',                         '40000000-0000-0000-0000-000000000003', NOW(), NOW()),
('80000000-0000-0000-0000-000000000012', '10000000-0000-0000-0000-000000000001', '50000000-0000-0000-0000-000000000003', '20000000-0000-0000-0000-000000000003', NULL, 'INV-ORG1-2026-012', 'draft',           120000.00,  9000.00, 10000.00, 119000.00,      0.00, 'NGN', '2026-04-01', 'Pre-operative appendectomy package - pending approval',                  '40000000-0000-0000-0000-000000000003', NOW(), NOW()),
-- Org 2 (Kenya Nairobi, KES)
('80000000-0000-0000-0000-000000000013', '10000000-0000-0000-0000-000000000002', '50000000-0000-0000-0000-000000000005', '20000000-0000-0000-0000-000000000007', NULL, 'INV-ORG2-2025-013', 'partially_paid',  22000.00,  1650.00,     0.00,  23650.00,  12000.00, 'KES', '2025-11-15', 'Pediatric vaccination and supplements - partial payment received',       '40000000-0000-0000-0000-000000000007', NOW(), NOW()),
('80000000-0000-0000-0000-000000000014', '10000000-0000-0000-0000-000000000002', '50000000-0000-0000-0000-000000000006', '20000000-0000-0000-0000-000000000009', NULL, 'INV-ORG2-2025-014', 'overdue',         18000.00,  1350.00,     0.00,  19350.00,      0.00, 'KES', '2025-08-20', 'Emergency wound care - unpaid',                                         '40000000-0000-0000-0000-000000000007', NOW(), NOW()),
-- Org 3 (Ghana Accra, GHS)
('80000000-0000-0000-0000-000000000015', '10000000-0000-0000-0000-000000000003', '50000000-0000-0000-0000-000000000008', '20000000-0000-0000-0000-000000000013', NULL, 'INV-ORG3-2026-015', 'partially_paid',  35000.00,  2625.00,  2000.00,  35625.00,  18000.00, 'GHS', '2026-01-15', 'Laparoscopic surgery - partial insurance payment received',              '40000000-0000-0000-0000-000000000011', NOW(), NOW()),
('80000000-0000-0000-0000-000000000016', '10000000-0000-0000-0000-000000000003', '50000000-0000-0000-0000-000000000009', '20000000-0000-0000-0000-000000000014', NULL, 'INV-ORG3-2025-016', 'cancelled',        5000.00,   375.00,     0.00,   5375.00,      0.00, 'GHS', '2025-09-10', 'Appointment cancelled by patient',                                      '40000000-0000-0000-0000-000000000011', NOW(), NOW()),
-- Org 4 (Ethiopia Addis Ababa, ETB)
('80000000-0000-0000-0000-000000000017', '10000000-0000-0000-0000-000000000004', '50000000-0000-0000-0000-000000000011', '20000000-0000-0000-0000-000000000018', NULL, 'INV-ORG4-2025-017', 'overdue',         43000.00,  3225.00,     0.00,  46225.00,      0.00, 'ETB', '2025-10-01', 'Surgical invoice - sent to collections',                                 '40000000-0000-0000-0000-000000000015', NOW(), NOW()),
('80000000-0000-0000-0000-000000000018', '10000000-0000-0000-0000-000000000004', '50000000-0000-0000-0000-000000000012', '20000000-0000-0000-0000-000000000016', NULL, 'INV-ORG4-2026-018', 'partially_paid',  15000.00,  1125.00,     0.00,  16125.00,   8000.00, 'ETB', '2026-02-28', 'Outpatient care - patient on payment plan',                              '40000000-0000-0000-0000-000000000015', NOW(), NOW()),
-- Org 5 (South Africa Cape Town, ZAR)
('80000000-0000-0000-0000-000000000019', '10000000-0000-0000-0000-000000000005', '50000000-0000-0000-0000-000000000013', '20000000-0000-0000-0000-000000000024', NULL, 'INV-ORG5-2025-019', 'paid',            65000.00,  4875.00,  5000.00,  64875.00,  64875.00, 'ZAR', '2025-09-30', NULL,                                                                     '40000000-0000-0000-0000-000000000019', NOW(), NOW()),
('80000000-0000-0000-0000-000000000020', '10000000-0000-0000-0000-000000000005', '50000000-0000-0000-0000-000000000015', '20000000-0000-0000-0000-000000000025', NULL, 'INV-ORG5-2025-020', 'overdue',         12000.00,   900.00,     0.00,  12900.00,      0.00, 'ZAR', '2025-06-30', 'Chronic medication supply - outstanding balance',                        '40000000-0000-0000-0000-000000000019', NOW(), NOW()),
-- Org 6 (Tanzania Dar es Salaam, TZS)
('80000000-0000-0000-0000-000000000021', '10000000-0000-0000-0000-000000000006', '50000000-0000-0000-0000-000000000017', '20000000-0000-0000-0000-000000000028', NULL, 'INV-ORG6-2025-021', 'overdue',        550000.00, 41250.00,     0.00, 591250.00,      0.00, 'TZS', '2025-10-15', 'Emergency abdominal surgery - unpaid',                                  '40000000-0000-0000-0000-000000000023', NOW(), NOW()),
('80000000-0000-0000-0000-000000000022', '10000000-0000-0000-0000-000000000006', '50000000-0000-0000-0000-000000000018', '20000000-0000-0000-0000-000000000030', NULL, 'INV-ORG6-2026-022', 'draft',           85000.00,  6375.00,     0.00,  91375.00,      0.00, 'TZS', '2026-05-01', 'Monthly ARV medication refill - pending review',                        '40000000-0000-0000-0000-000000000023', NOW(), NOW()),
-- Org 7 (Uganda Kampala, UGX)
('80000000-0000-0000-0000-000000000023', '10000000-0000-0000-0000-000000000007', '50000000-0000-0000-0000-000000000020', '20000000-0000-0000-0000-000000000032', NULL, 'INV-ORG7-2026-023', 'partially_paid', 850000.00, 63750.00, 50000.00, 863750.00, 400000.00, 'UGX', '2026-03-31', 'Pediatric surgery - payment plan in progress',                          '40000000-0000-0000-0000-000000000027', NOW(), NOW()),
('80000000-0000-0000-0000-000000000024', '10000000-0000-0000-0000-000000000007', '50000000-0000-0000-0000-000000000021', '20000000-0000-0000-0000-000000000034', NULL, 'INV-ORG7-2025-024', 'overdue',       1200000.00, 90000.00,     0.00,1290000.00,      0.00, 'UGX', '2025-09-30', 'Emergency trauma surgery - referred to NHIF',                           '40000000-0000-0000-0000-000000000027', NOW(), NOW()),
-- Org 8 (Rwanda Kigali, RWF)
('80000000-0000-0000-0000-000000000025', '10000000-0000-0000-0000-000000000008', '50000000-0000-0000-0000-000000000023', '20000000-0000-0000-0000-000000000038', NULL, 'INV-ORG8-2025-025', 'overdue',        180000.00, 13500.00,     0.00, 193500.00,      0.00, 'RWF', '2025-08-31', 'Cholecystectomy - unpaid balance',                                      '40000000-0000-0000-0000-000000000031', NOW(), NOW()),
('80000000-0000-0000-0000-000000000026', '10000000-0000-0000-0000-000000000008', '50000000-0000-0000-0000-000000000024', '20000000-0000-0000-0000-000000000036', NULL, 'INV-ORG8-2026-026', 'partially_paid',  95000.00,  7125.00,  5000.00,  97125.00,  50000.00, 'RWF', '2026-01-31', 'Diabetes management - insurance claim pending',                         '40000000-0000-0000-0000-000000000031', NOW(), NOW()),
-- Org 9 (Nigeria Abuja, NGN)
('80000000-0000-0000-0000-000000000027', '10000000-0000-0000-0000-000000000009', '50000000-0000-0000-0000-000000000026', '20000000-0000-0000-0000-000000000041', NULL, 'INV-ORG9-2025-027', 'overdue',         18000.00,  1350.00,     0.00,  19350.00,      0.00, 'NGN', '2025-09-15', 'Specialist consultation - unpaid',                                      '40000000-0000-0000-0000-000000000035', NOW(), NOW()),
('80000000-0000-0000-0000-000000000028', '10000000-0000-0000-0000-000000000009', '50000000-0000-0000-0000-000000000027', '20000000-0000-0000-0000-000000000043', NULL, 'INV-ORG9-2026-028', 'partially_paid',  75000.00,  5625.00,  5000.00,  75625.00,  40000.00, 'NGN', '2026-04-30', 'Laparoscopic appendectomy - patient on payment plan',                   '40000000-0000-0000-0000-000000000035', NOW(), NOW()),
-- Org 10 (Morocco Casablanca, MAD)
('80000000-0000-0000-0000-000000000029', '10000000-0000-0000-0000-000000000010', '50000000-0000-0000-0000-000000000029', '20000000-0000-0000-0000-000000000047', NULL, 'INV-ORG10-2025-029', 'overdue',         6500.00,   487.50,     0.00,   6987.50,      0.00, 'MAD', '2025-11-30', 'Pediatric consultation and diagnostic tests - unpaid',                  '40000000-0000-0000-0000-000000000039', NOW(), NOW()),
('80000000-0000-0000-0000-000000000030', '10000000-0000-0000-0000-000000000010', '50000000-0000-0000-0000-000000000030', '20000000-0000-0000-0000-000000000050', NULL, 'INV-ORG10-2026-030', 'partially_paid',  4200.00,   315.00,     0.00,   4515.00,   2000.00, 'MAD', '2026-02-28', 'Chronic medication refill - partial payment received',                  '40000000-0000-0000-0000-000000000039', NOW(), NOW());

-- =============================================================================
-- BILLING SCHEMA: Additional Invoice Items (52 more, IDs 016-067)
-- =============================================================================

INSERT INTO billing.invoice_items (item_id, invoice_id, description, quantity, unit_price, total_price, item_type, created_at) VALUES
-- Invoice 011 (Org1, Emergency, 25000 NGN)
('81000000-0000-0000-0000-000000000016', '80000000-0000-0000-0000-000000000011', 'Emergency consultation',                              1,  10000.00,  10000.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000017', '80000000-0000-0000-0000-000000000011', 'IV fluids and administration supplies',               1,   5000.00,   5000.00, 'procedure',    NOW()),
('81000000-0000-0000-0000-000000000018', '80000000-0000-0000-0000-000000000011', 'Urgent blood tests panel',                            1,  10000.00,  10000.00, 'lab_test',     NOW()),
-- Invoice 012 (Org1, Surgery, 120000 NGN)
('81000000-0000-0000-0000-000000000019', '80000000-0000-0000-0000-000000000012', 'Pre-operative surgical consultation',                 1,  20000.00,  20000.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000020', '80000000-0000-0000-0000-000000000012', 'Laparoscopic appendectomy',                           1,  80000.00,  80000.00, 'procedure',    NOW()),
('81000000-0000-0000-0000-000000000021', '80000000-0000-0000-0000-000000000012', 'Post-operative ward stay - 2 days',                   2,  10000.00,  20000.00, 'room_charge',  NOW()),
-- Invoice 013 (Org2, Pediatrics, 22000 KES)
('81000000-0000-0000-0000-000000000022', '80000000-0000-0000-0000-000000000013', 'Pediatric well-child consultation',                   1,   7000.00,   7000.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000023', '80000000-0000-0000-0000-000000000013', 'Childhood vaccination - 3 doses (DTP, Hib, Polio)',   3,   3000.00,   9000.00, 'procedure',    NOW()),
('81000000-0000-0000-0000-000000000024', '80000000-0000-0000-0000-000000000013', 'Multivitamin and iron supplement - 1 month supply',   1,   6000.00,   6000.00, 'medication',   NOW()),
-- Invoice 014 (Org2, Emergency, 18000 KES)
('81000000-0000-0000-0000-000000000025', '80000000-0000-0000-0000-000000000014', 'Emergency assessment and consultation',               1,   9000.00,   9000.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000026', '80000000-0000-0000-0000-000000000014', 'Wound suturing and wound care procedure',             1,   6000.00,   6000.00, 'procedure',    NOW()),
('81000000-0000-0000-0000-000000000027', '80000000-0000-0000-0000-000000000014', 'Dressing materials and bandage supplies',             1,   3000.00,   3000.00, 'other',        NOW()),
-- Invoice 015 (Org3, Surgery, 35000 GHS)
('81000000-0000-0000-0000-000000000028', '80000000-0000-0000-0000-000000000015', 'Pre-operative assessment and anaesthesia review',     1,   5000.00,   5000.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000029', '80000000-0000-0000-0000-000000000015', 'Laparoscopic cholecystectomy',                        1,  22000.00,  22000.00, 'procedure',    NOW()),
('81000000-0000-0000-0000-000000000030', '80000000-0000-0000-0000-000000000015', 'Post-operative recovery room - 2 days',               2,   4000.00,   8000.00, 'room_charge',  NOW()),
-- Invoice 016 (Org3, Emergency, 5000 GHS - cancelled)
('81000000-0000-0000-0000-000000000031', '80000000-0000-0000-0000-000000000016', 'Emergency consultation (cancelled)',                  1,   5000.00,   5000.00, 'consultation', NOW()),
-- Invoice 017 (Org4, Surgery, 42000 ETB)
('81000000-0000-0000-0000-000000000032', '80000000-0000-0000-0000-000000000017', 'Surgical consultation and pre-operative workup',      1,  12000.00,  12000.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000033', '80000000-0000-0000-0000-000000000017', 'Open abdominal hernia repair surgery',                1,  25000.00,  25000.00, 'procedure',    NOW()),
('81000000-0000-0000-0000-000000000034', '80000000-0000-0000-0000-000000000017', 'Surgical ward stay - 3 days',                         3,   2000.00,   6000.00, 'room_charge',  NOW()),
-- Invoice 018 (Org4, Gen Med, 15000 ETB)
('81000000-0000-0000-0000-000000000035', '80000000-0000-0000-0000-000000000018', 'Outpatient consultation - chronic disease management', 1,  8000.00,   8000.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000036', '80000000-0000-0000-0000-000000000018', 'Diabetes and lipid lab panel (HbA1c, fasting glucose)', 1, 4500.00,   4500.00, 'lab_test',     NOW()),
('81000000-0000-0000-0000-000000000037', '80000000-0000-0000-0000-000000000018', 'Metformin 500mg - 30 tablets',                        1,   2500.00,   2500.00, 'medication',   NOW()),
-- Invoice 019 (Org5, Emergency, 65000 ZAR - paid)
('81000000-0000-0000-0000-000000000038', '80000000-0000-0000-0000-000000000019', 'Emergency cardiology consultation',                   1,  25000.00,  25000.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000039', '80000000-0000-0000-0000-000000000019', 'Cardiac monitoring and stabilisation procedure',      1,  30000.00,  30000.00, 'procedure',    NOW()),
('81000000-0000-0000-0000-000000000040', '80000000-0000-0000-0000-000000000019', 'ICU room charge - 1 day',                             1,  10000.00,  10000.00, 'room_charge',  NOW()),
-- Invoice 020 (Org5, Pharmacy, 12000 ZAR)
('81000000-0000-0000-0000-000000000041', '80000000-0000-0000-0000-000000000020', 'Antihypertensive medication - 3 month supply',        3,   4000.00,  12000.00, 'medication',   NOW()),
-- Invoice 021 (Org6, Surgery, 550000 TZS)
('81000000-0000-0000-0000-000000000042', '80000000-0000-0000-0000-000000000021', 'Emergency surgical consultation',                     1, 100000.00, 100000.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000043', '80000000-0000-0000-0000-000000000021', 'Emergency exploratory laparotomy',                    1, 350000.00, 350000.00, 'procedure',    NOW()),
('81000000-0000-0000-0000-000000000044', '80000000-0000-0000-0000-000000000021', 'Surgical ward stay - 5 days',                         5,  20000.00, 100000.00, 'room_charge',  NOW()),
-- Invoice 022 (Org6, Pharmacy, 85000 TZS)
('81000000-0000-0000-0000-000000000045', '80000000-0000-0000-0000-000000000022', 'Antiretroviral therapy (ART) - 1 month supply',       1,  85000.00,  85000.00, 'medication',   NOW()),
-- Invoice 023 (Org7, Pediatrics, 850000 UGX)
('81000000-0000-0000-0000-000000000046', '80000000-0000-0000-0000-000000000023', 'Pediatric specialist consultation',                   1, 250000.00, 250000.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000047', '80000000-0000-0000-0000-000000000023', 'Adenotonsillectomy (tonsil and adenoid removal)',      1, 400000.00, 400000.00, 'procedure',    NOW()),
('81000000-0000-0000-0000-000000000048', '80000000-0000-0000-0000-000000000023', 'Pediatric ward stay - 2 days',                        2, 100000.00, 200000.00, 'room_charge',  NOW()),
-- Invoice 024 (Org7, Emergency, 1200000 UGX)
('81000000-0000-0000-0000-000000000049', '80000000-0000-0000-0000-000000000024', 'Emergency trauma assessment and resuscitation',       1, 400000.00, 400000.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000050', '80000000-0000-0000-0000-000000000024', 'Emergency trauma surgery',                            1, 600000.00, 600000.00, 'procedure',    NOW()),
('81000000-0000-0000-0000-000000000051', '80000000-0000-0000-0000-000000000024', 'ICU admission - 2 days',                              2, 100000.00, 200000.00, 'room_charge',  NOW()),
-- Invoice 025 (Org8, Surgery, 180000 RWF)
('81000000-0000-0000-0000-000000000052', '80000000-0000-0000-0000-000000000025', 'Surgical consultation and anaesthesia assessment',    1,  50000.00,  50000.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000053', '80000000-0000-0000-0000-000000000025', 'Laparoscopic cholecystectomy',                        1, 100000.00, 100000.00, 'procedure',    NOW()),
('81000000-0000-0000-0000-000000000054', '80000000-0000-0000-0000-000000000025', 'Post-operative ward stay - 3 days',                   3,  10000.00,  30000.00, 'room_charge',  NOW()),
-- Invoice 026 (Org8, Gen Med, 95000 RWF)
('81000000-0000-0000-0000-000000000055', '80000000-0000-0000-0000-000000000026', 'Specialist consultation - diabetes and hypertension',  1, 35000.00,  35000.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000056', '80000000-0000-0000-0000-000000000026', 'Comprehensive lab panel (HbA1c, lipids, creatinine)', 1,  40000.00,  40000.00, 'lab_test',     NOW()),
('81000000-0000-0000-0000-000000000057', '80000000-0000-0000-0000-000000000026', 'Metformin and atorvastatin - 1 month supply',         1,  20000.00,  20000.00, 'medication',   NOW()),
-- Invoice 027 (Org9, Gen Med, 18000 NGN)
('81000000-0000-0000-0000-000000000058', '80000000-0000-0000-0000-000000000027', 'Specialist outpatient consultation',                  1,  10000.00,  10000.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000059', '80000000-0000-0000-0000-000000000027', 'Chest X-ray and diagnostic imaging',                  1,   8000.00,   8000.00, 'lab_test',     NOW()),
-- Invoice 028 (Org9, Surgery, 75000 NGN)
('81000000-0000-0000-0000-000000000060', '80000000-0000-0000-0000-000000000028', 'Pre-operative surgical consultation',                 1,  15000.00,  15000.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000061', '80000000-0000-0000-0000-000000000028', 'Laparoscopic appendectomy',                           1,  45000.00,  45000.00, 'procedure',    NOW()),
('81000000-0000-0000-0000-000000000062', '80000000-0000-0000-0000-000000000028', 'Post-operative ward stay - 2 days',                   2,   7500.00,  15000.00, 'room_charge',  NOW()),
-- Invoice 029 (Org10, Pediatrics, 6500 MAD)
('81000000-0000-0000-0000-000000000063', '80000000-0000-0000-0000-000000000029', 'Pediatric consultation and growth assessment',        1,   3000.00,   3000.00, 'consultation', NOW()),
('81000000-0000-0000-0000-000000000064', '80000000-0000-0000-0000-000000000029', 'Blood culture and complete blood count',              1,   2000.00,   2000.00, 'lab_test',     NOW()),
('81000000-0000-0000-0000-000000000065', '80000000-0000-0000-0000-000000000029', 'Amoxicillin 250mg/5ml suspension - 100ml',            1,   1500.00,   1500.00, 'medication',   NOW()),
-- Invoice 030 (Org10, Pharmacy, 4200 MAD)
('81000000-0000-0000-0000-000000000066', '80000000-0000-0000-0000-000000000030', 'Metformin 850mg and glibenclamide - 1 month supply',  1,   2800.00,   2800.00, 'medication',   NOW()),
('81000000-0000-0000-0000-000000000067', '80000000-0000-0000-0000-000000000030', 'Vitamin D3 and calcium carbonate supplement',         1,   1400.00,   1400.00, 'medication',   NOW());

-- =============================================================================
-- BILLING SCHEMA: Additional Payments (8 more, IDs 009-016)
-- Covers newly-paid invoice (019) and all partially_paid invoices (013,015,018,023,026,028,030)
-- =============================================================================

INSERT INTO billing.payments (payment_id, org_id, invoice_id, amount, payment_method, reference_number, status, received_by, paid_at, notes, created_at) VALUES
('82000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000005', '80000000-0000-0000-0000-000000000019', 64875.00, 'card',          'CARD-GSH-2025-019',  'completed', '40000000-0000-0000-0000-000000000019', '2025-09-05 11:00:00+00', NULL,                                             NOW()),
('82000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000002', '80000000-0000-0000-0000-000000000013', 12000.00, 'mobile_money',  'MPESA-NMH-2025-013', 'completed', '40000000-0000-0000-0000-000000000007', '2025-09-20 10:30:00+00', 'Partial payment via M-Pesa',                     NOW()),
('82000000-0000-0000-0000-000000000011', '10000000-0000-0000-0000-000000000003', '80000000-0000-0000-0000-000000000015', 18000.00, 'insurance',     'INS-NHIS-GH-2025-015','completed', '40000000-0000-0000-0000-000000000011', '2025-11-01 09:00:00+00', 'Partial NHIS insurance payment',                 NOW()),
('82000000-0000-0000-0000-000000000012', '10000000-0000-0000-0000-000000000004', '80000000-0000-0000-0000-000000000018', 8000.00,  'cash',          'CASH-TAH-2026-018',  'completed', '40000000-0000-0000-0000-000000000015', '2026-01-15 14:00:00+00', 'First instalment under payment plan',            NOW()),
('82000000-0000-0000-0000-000000000013', '10000000-0000-0000-0000-000000000007', '80000000-0000-0000-0000-000000000023', 400000.00,'mobile_money',  'MTN-KCH-2026-023',   'completed', '40000000-0000-0000-0000-000000000027', '2026-01-20 13:00:00+00', 'Partial payment via MTN Mobile Money',           NOW()),
('82000000-0000-0000-0000-000000000014', '10000000-0000-0000-0000-000000000008', '80000000-0000-0000-0000-000000000026', 50000.00, 'bank_transfer', 'TRF-KHP-2025-026',   'completed', '40000000-0000-0000-0000-000000000031', '2025-12-10 10:00:00+00', 'Partial payment - insurance claim submitted',    NOW()),
('82000000-0000-0000-0000-000000000015', '10000000-0000-0000-0000-000000000009', '80000000-0000-0000-0000-000000000028', 40000.00, 'bank_transfer', 'TRF-ASC-2026-028',   'completed', '40000000-0000-0000-0000-000000000035', '2026-02-01 09:30:00+00', 'First instalment under payment plan',            NOW()),
('82000000-0000-0000-0000-000000000016', '10000000-0000-0000-0000-000000000010', '80000000-0000-0000-0000-000000000030', 2000.00,  'card',          'CARD-CMI-2026-030',  'completed', '40000000-0000-0000-0000-000000000039', '2026-01-28 11:00:00+00', 'Partial payment via debit card',                 NOW());

-- =============================================================================
-- LAB SCHEMA: Lab Tests (2 per org = 20 total)
-- =============================================================================

INSERT INTO lab.lab_tests (test_id, org_id, name, category, description, normal_range, unit, cost, is_active, created_at, updated_at) VALUES
('90000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', 'Complete Blood Count', 'Hematology', 'Full blood count measuring red cells, white cells, platelets and hemoglobin', '4.5-11.0', '10^3/uL', 3000.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000001', 'Blood Glucose (Fasting)', 'Biochemistry', 'Fasting blood glucose measurement for diabetes screening', '70-100', 'mg/dL', 1500.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000002', 'Malaria Rapid Diagnostic Test', 'Parasitology', 'Rapid immunochromatographic test for P. falciparum antigens', 'Negative', 'qualitative', 800.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000002', 'Liver Function Test', 'Biochemistry', 'Panel measuring ALT, AST, ALP, bilirubin and albumin levels', 'ALT: 7-56', 'U/L', 5000.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000003', 'Urinalysis', 'Urinalysis', 'Complete urine analysis including physical, chemical and microscopic examination', 'Normal', 'qualitative', 1000.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000003', 'Complete Blood Count', 'Hematology', 'Full blood count measuring red cells, white cells, platelets and hemoglobin', '4.5-11.0', '10^3/uL', 3000.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000004', 'Blood Glucose (Fasting)', 'Biochemistry', 'Fasting blood glucose measurement for diabetes screening', '70-100', 'mg/dL', 1500.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000004', 'Malaria Rapid Diagnostic Test', 'Parasitology', 'Rapid immunochromatographic test for P. falciparum antigens', 'Negative', 'qualitative', 800.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000005', 'Liver Function Test', 'Biochemistry', 'Panel measuring ALT, AST, ALP, bilirubin and albumin levels', 'ALT: 7-56', 'U/L', 5000.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000005', 'Urinalysis', 'Urinalysis', 'Complete urine analysis including physical, chemical and microscopic examination', 'Normal', 'qualitative', 1000.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000011', '10000000-0000-0000-0000-000000000006', 'Complete Blood Count', 'Hematology', 'Full blood count measuring red cells, white cells, platelets and hemoglobin', '4.5-11.0', '10^3/uL', 3000.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000012', '10000000-0000-0000-0000-000000000006', 'Blood Glucose (Fasting)', 'Biochemistry', 'Fasting blood glucose measurement for diabetes screening', '70-100', 'mg/dL', 1500.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000013', '10000000-0000-0000-0000-000000000007', 'Malaria Rapid Diagnostic Test', 'Parasitology', 'Rapid immunochromatographic test for P. falciparum antigens', 'Negative', 'qualitative', 800.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000014', '10000000-0000-0000-0000-000000000007', 'Liver Function Test', 'Biochemistry', 'Panel measuring ALT, AST, ALP, bilirubin and albumin levels', 'ALT: 7-56', 'U/L', 5000.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000015', '10000000-0000-0000-0000-000000000008', 'Urinalysis', 'Urinalysis', 'Complete urine analysis including physical, chemical and microscopic examination', 'Normal', 'qualitative', 1000.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000016', '10000000-0000-0000-0000-000000000008', 'Complete Blood Count', 'Hematology', 'Full blood count measuring red cells, white cells, platelets and hemoglobin', '4.5-11.0', '10^3/uL', 3000.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000017', '10000000-0000-0000-0000-000000000009', 'Blood Glucose (Fasting)', 'Biochemistry', 'Fasting blood glucose measurement for diabetes screening', '70-100', 'mg/dL', 1500.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000018', '10000000-0000-0000-0000-000000000009', 'Malaria Rapid Diagnostic Test', 'Parasitology', 'Rapid immunochromatographic test for P. falciparum antigens', 'Negative', 'qualitative', 800.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000019', '10000000-0000-0000-0000-000000000010', 'Liver Function Test', 'Biochemistry', 'Panel measuring ALT, AST, ALP, bilirubin and albumin levels', 'ALT: 7-56', 'U/L', 5000.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000020', '10000000-0000-0000-0000-000000000010', 'Urinalysis', 'Urinalysis', 'Complete urine analysis including physical, chemical and microscopic examination', 'Normal', 'qualitative', 1000.00, TRUE, NOW(), NOW());

-- =============================================================================
-- LAB SCHEMA: Lab Orders (1 per org = 10 total)
-- =============================================================================

INSERT INTO lab.lab_orders (order_id, org_id, patient_id, ordered_by, appointment_id, test_id, status, priority, notes, ordered_at, created_at, updated_at) VALUES
('91000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '50000000-0000-0000-0000-000000000001', '40000000-0000-0000-0000-000000000001', '60000000-0000-0000-0000-000000000001', '90000000-0000-0000-0000-000000000001', 'completed', 'normal', NULL, '2025-03-10 09:15:00+00', NOW(), NOW()),
('91000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '50000000-0000-0000-0000-000000000004', '40000000-0000-0000-0000-000000000005', '60000000-0000-0000-0000-000000000003', '90000000-0000-0000-0000-000000000003', 'completed', 'normal', NULL, '2025-04-05 08:45:00+00', NOW(), NOW()),
('91000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000003', '50000000-0000-0000-0000-000000000007', '40000000-0000-0000-0000-000000000009', '60000000-0000-0000-0000-000000000005', '90000000-0000-0000-0000-000000000005', 'completed', 'normal', NULL, '2025-02-20 11:15:00+00', NOW(), NOW()),
('91000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000004', '50000000-0000-0000-0000-000000000010', '40000000-0000-0000-0000-000000000013', '60000000-0000-0000-0000-000000000007', '90000000-0000-0000-0000-000000000007', 'completed', 'urgent', NULL, '2025-05-15 10:15:00+00', NOW(), NOW()),
('91000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000005', '50000000-0000-0000-0000-000000000014', '40000000-0000-0000-0000-000000000017', '60000000-0000-0000-0000-000000000009', '90000000-0000-0000-0000-000000000009', 'completed', 'stat', NULL, '2025-01-28 15:45:00+00', NOW(), NOW()),
('91000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000006', '50000000-0000-0000-0000-000000000016', '40000000-0000-0000-0000-000000000021', '60000000-0000-0000-0000-000000000011', '90000000-0000-0000-0000-000000000011', 'completed', 'normal', NULL, '2025-06-01 09:15:00+00', NOW(), NOW()),
('91000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000007', '50000000-0000-0000-0000-000000000019', '40000000-0000-0000-0000-000000000025', '60000000-0000-0000-0000-000000000013', '90000000-0000-0000-0000-000000000013', 'completed', 'normal', NULL, '2025-04-20 08:15:00+00', NOW(), NOW()),
('91000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000008', '50000000-0000-0000-0000-000000000022', '40000000-0000-0000-0000-000000000029', '60000000-0000-0000-0000-000000000015', '90000000-0000-0000-0000-000000000015', 'in_progress', 'normal', NULL, '2025-03-25 10:15:00+00', NOW(), NOW()),
('91000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000009', '50000000-0000-0000-0000-000000000025', '40000000-0000-0000-0000-000000000033', '60000000-0000-0000-0000-000000000017', '90000000-0000-0000-0000-000000000017', 'in_progress', 'urgent', NULL, '2025-05-08 11:15:00+00', NOW(), NOW()),
('91000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000010', '50000000-0000-0000-0000-000000000028', '40000000-0000-0000-0000-000000000037', '60000000-0000-0000-0000-000000000019', '90000000-0000-0000-0000-000000000019', 'ordered', 'normal', NULL, '2025-02-12 09:45:00+00', NOW(), NOW());

-- =============================================================================
-- LAB SCHEMA: Lab Results (1 per completed lab order = 7)
-- =============================================================================

INSERT INTO lab.lab_results (result_id, order_id, org_id, result_value, unit, reference_range, is_abnormal, performed_by, verified_by, notes, resulted_at, created_at, updated_at) VALUES
('92000000-0000-0000-0000-000000000001', '91000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '7.2', '10^3/uL', '4.5-11.0', FALSE, '40000000-0000-0000-0000-000000000002', '40000000-0000-0000-0000-000000000001', 'All parameters within normal limits', '2025-03-10 12:00:00+00', NOW(), NOW()),
('92000000-0000-0000-0000-000000000002', '91000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', 'Positive - P. falciparum', 'qualitative', 'Negative', TRUE, '40000000-0000-0000-0000-000000000006', '40000000-0000-0000-0000-000000000005', 'High parasitemia, recommend immediate treatment', '2025-04-05 11:00:00+00', NOW(), NOW()),
('92000000-0000-0000-0000-000000000003', '91000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000003', 'Normal - no abnormalities detected', 'qualitative', 'Normal', FALSE, '40000000-0000-0000-0000-000000000010', '40000000-0000-0000-0000-000000000009', 'Clear urine, no infection markers', '2025-02-20 14:00:00+00', NOW(), NOW()),
('92000000-0000-0000-0000-000000000004', '91000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000004', '92', 'mg/dL', '70-100', FALSE, '40000000-0000-0000-0000-000000000014', '40000000-0000-0000-0000-000000000013', 'Fasting glucose within normal range', '2025-05-15 13:00:00+00', NOW(), NOW()),
('92000000-0000-0000-0000-000000000005', '91000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000005', 'ALT: 85, AST: 72', 'U/L', 'ALT: 7-56', TRUE, '40000000-0000-0000-0000-000000000018', '40000000-0000-0000-0000-000000000017', 'Elevated liver enzymes, recommend follow-up', '2025-01-28 18:00:00+00', NOW(), NOW()),
('92000000-0000-0000-0000-000000000006', '91000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000006', '12.8', '10^3/uL', '4.5-11.0', TRUE, '40000000-0000-0000-0000-000000000022', '40000000-0000-0000-0000-000000000021', 'Elevated WBC count suggesting active infection', '2025-06-01 12:00:00+00', NOW(), NOW()),
('92000000-0000-0000-0000-000000000007', '91000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000007', 'Positive - P. falciparum', 'qualitative', 'Negative', TRUE, '40000000-0000-0000-0000-000000000026', '40000000-0000-0000-0000-000000000025', 'Low parasitemia, standard treatment course', '2025-04-20 11:00:00+00', NOW(), NOW());

-- =============================================================================
-- LAB SCHEMA: Additional Lab Tests (1 per org = 10 more, IDs 021-030)
-- =============================================================================

INSERT INTO lab.lab_tests (test_id, org_id, name, category, description, normal_range, unit, cost, is_active, created_at, updated_at) VALUES
('90000000-0000-0000-0000-000000000021', '10000000-0000-0000-0000-000000000001', 'Thyroid Function Test', 'Endocrinology', 'Measures TSH, T3 and T4 levels to evaluate thyroid gland activity', 'TSH: 0.4-4.0', 'mIU/L', 4000.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000022', '10000000-0000-0000-0000-000000000002', 'HIV Rapid Test', 'Serology', 'Rapid immunoassay for HIV-1/HIV-2 antibody detection', 'Non-reactive', 'qualitative', 1200.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000023', '10000000-0000-0000-0000-000000000003', 'Lipid Profile', 'Biochemistry', 'Measures total cholesterol, HDL, LDL and triglycerides', 'Total Chol: <200', 'mg/dL', 4500.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000024', '10000000-0000-0000-0000-000000000004', 'Sputum AFB Culture', 'Microbiology', 'Acid-fast bacilli smear and culture for tuberculosis diagnosis', 'No growth', 'qualitative', 3500.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000025', '10000000-0000-0000-0000-000000000005', 'Kidney Function Test', 'Biochemistry', 'Measures creatinine, BUN, eGFR and electrolytes to assess renal function', 'Creatinine: 0.6-1.2', 'mg/dL', 4200.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000026', '10000000-0000-0000-0000-000000000006', 'HIV Rapid Test', 'Serology', 'Rapid immunoassay for HIV-1/HIV-2 antibody detection', 'Non-reactive', 'qualitative', 1200.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000027', '10000000-0000-0000-0000-000000000007', 'Urinalysis', 'Urinalysis', 'Complete urine analysis including physical, chemical and microscopic examination', 'Normal', 'qualitative', 1000.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000028', '10000000-0000-0000-0000-000000000008', 'Malaria Rapid Diagnostic Test', 'Parasitology', 'Rapid immunochromatographic test for P. falciparum antigens', 'Negative', 'qualitative', 800.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000029', '10000000-0000-0000-0000-000000000009', 'Typhoid Rapid Test', 'Serology', 'Rapid detection of Salmonella typhi antigens and antibodies', 'Non-reactive', 'qualitative', 1500.00, TRUE, NOW(), NOW()),
('90000000-0000-0000-0000-000000000030', '10000000-0000-0000-0000-000000000010', 'Blood Glucose (Fasting)', 'Biochemistry', 'Fasting blood glucose measurement for diabetes screening', '70-100', 'mg/dL', 1500.00, TRUE, NOW(), NOW());

-- =============================================================================
-- LAB SCHEMA: Additional Lab Orders (1 per org = 10 more, IDs 011-020)
-- =============================================================================

INSERT INTO lab.lab_orders (order_id, org_id, patient_id, ordered_by, appointment_id, test_id, status, priority, notes, ordered_at, created_at, updated_at) VALUES
('91000000-0000-0000-0000-000000000011', '10000000-0000-0000-0000-000000000001', '50000000-0000-0000-0000-000000000002', '40000000-0000-0000-0000-000000000001', NULL,                                        '90000000-0000-0000-0000-000000000021', 'ordered',     'normal', 'Pre-natal thyroid screening',                 '2026-01-20 09:00:00+00', NOW(), NOW()),
('91000000-0000-0000-0000-000000000012', '10000000-0000-0000-0000-000000000002', '50000000-0000-0000-0000-000000000005', '40000000-0000-0000-0000-000000000005', '60000000-0000-0000-0000-000000000004', '90000000-0000-0000-0000-000000000022', 'collected',   'normal', NULL,                                          '2026-02-01 10:00:00+00', NOW(), NOW()),
('91000000-0000-0000-0000-000000000013', '10000000-0000-0000-0000-000000000003', '50000000-0000-0000-0000-000000000009', '40000000-0000-0000-0000-000000000009', NULL,                                        '90000000-0000-0000-0000-000000000023', 'completed',   'normal', 'Routine lipid screening for adult male',      '2025-01-25 09:00:00+00', NOW(), NOW()),
('91000000-0000-0000-0000-000000000014', '10000000-0000-0000-0000-000000000004', '50000000-0000-0000-0000-000000000011', '40000000-0000-0000-0000-000000000013', NULL,                                        '90000000-0000-0000-0000-000000000024', 'completed',   'urgent', 'Rule out TB - contact with confirmed TB case','2025-05-17 10:00:00+00', NOW(), NOW()),
('91000000-0000-0000-0000-000000000015', '10000000-0000-0000-0000-000000000005', '50000000-0000-0000-0000-000000000015', '40000000-0000-0000-0000-000000000017', NULL,                                        '90000000-0000-0000-0000-000000000025', 'completed',   'normal', NULL,                                          '2025-01-30 14:00:00+00', NOW(), NOW()),
('91000000-0000-0000-0000-000000000016', '10000000-0000-0000-0000-000000000006', '50000000-0000-0000-0000-000000000017', '40000000-0000-0000-0000-000000000021', '60000000-0000-0000-0000-000000000012', '90000000-0000-0000-0000-000000000026', 'in_progress', 'normal', NULL,                                          '2026-02-01 08:00:00+00', NOW(), NOW()),
('91000000-0000-0000-0000-000000000017', '10000000-0000-0000-0000-000000000007', '50000000-0000-0000-0000-000000000020', '40000000-0000-0000-0000-000000000025', NULL,                                        '90000000-0000-0000-0000-000000000027', 'completed',   'normal', 'Urinalysis for dysuria complaint',            '2025-04-22 09:00:00+00', NOW(), NOW()),
('91000000-0000-0000-0000-000000000018', '10000000-0000-0000-0000-000000000008', '50000000-0000-0000-0000-000000000023', '40000000-0000-0000-0000-000000000029', NULL,                                        '90000000-0000-0000-0000-000000000028', 'completed',   'normal', 'Fever workup - rule out malaria',             '2025-03-27 10:00:00+00', NOW(), NOW()),
('91000000-0000-0000-0000-000000000019', '10000000-0000-0000-0000-000000000009', '50000000-0000-0000-0000-000000000026', '40000000-0000-0000-0000-000000000033', NULL,                                        '90000000-0000-0000-0000-000000000029', 'ordered',     'normal', 'Suspected enteric fever',                     '2025-05-10 11:00:00+00', NOW(), NOW()),
('91000000-0000-0000-0000-000000000020', '10000000-0000-0000-0000-000000000010', '50000000-0000-0000-0000-000000000029', '40000000-0000-0000-0000-000000000037', NULL,                                        '90000000-0000-0000-0000-000000000030', 'completed',   'normal', NULL,                                          '2025-02-13 08:00:00+00', NOW(), NOW());

-- =============================================================================
-- LAB SCHEMA: Additional Lab Results (1 per new completed order = 6, IDs 008-013)
-- =============================================================================

INSERT INTO lab.lab_results (result_id, order_id, org_id, result_value, unit, reference_range, is_abnormal, performed_by, verified_by, notes, resulted_at, created_at, updated_at) VALUES
('92000000-0000-0000-0000-000000000008', '91000000-0000-0000-0000-000000000013', '10000000-0000-0000-0000-000000000003', 'Total Cholesterol: 215, LDL: 142, HDL: 38, Triglycerides: 175', 'mg/dL',   'Total Chol: <200',   TRUE,  '40000000-0000-0000-0000-000000000010', '40000000-0000-0000-0000-000000000009', 'Borderline high total cholesterol and LDL; low HDL; lifestyle modifications recommended',    '2025-01-25 13:00:00+00', NOW(), NOW()),
('92000000-0000-0000-0000-000000000009', '91000000-0000-0000-0000-000000000014', '10000000-0000-0000-0000-000000000004', 'No AFB detected - Grade 0',                                         'qualitative', 'No growth',        FALSE, '40000000-0000-0000-0000-000000000014', '40000000-0000-0000-0000-000000000013', 'Negative for AFB smear; solid culture pending at 6 weeks; contact tracing advised',          '2025-05-18 09:00:00+00', NOW(), NOW()),
('92000000-0000-0000-0000-000000000010', '91000000-0000-0000-0000-000000000015', '10000000-0000-0000-0000-000000000005', 'Creatinine: 0.9, BUN: 14, eGFR: 82, Na: 139, K: 4.1',              'mg/dL',   'Creatinine: 0.6-1.2', FALSE, '40000000-0000-0000-0000-000000000018', '40000000-0000-0000-0000-000000000017', 'Renal function within normal limits',                                                        '2025-01-30 16:00:00+00', NOW(), NOW()),
('92000000-0000-0000-0000-000000000011', '91000000-0000-0000-0000-000000000017', '10000000-0000-0000-0000-000000000007', 'Cloudy; pH 6.5; Protein 2+; RBC 10-15/hpf; WBC 20-30/hpf; Bacteria present', 'qualitative', 'Normal', TRUE,  '40000000-0000-0000-0000-000000000026', '40000000-0000-0000-0000-000000000025', 'Urinary tract infection suspected; urine culture ordered; empiric antibiotic therapy initiated', '2025-04-22 11:00:00+00', NOW(), NOW()),
('92000000-0000-0000-0000-000000000012', '91000000-0000-0000-0000-000000000018', '10000000-0000-0000-0000-000000000008', 'Negative',                                                           'qualitative', 'Negative',        FALSE, '40000000-0000-0000-0000-000000000030', '40000000-0000-0000-0000-000000000029', 'No malaria antigens detected; consider other causes of fever including viral or bacterial infection', '2025-03-27 13:00:00+00', NOW(), NOW()),
('92000000-0000-0000-0000-000000000013', '91000000-0000-0000-0000-000000000020', '10000000-0000-0000-0000-000000000010', '118',                                                                'mg/dL',   '70-100',            TRUE,  '40000000-0000-0000-0000-000000000038', '40000000-0000-0000-0000-000000000037', 'Impaired fasting glucose (pre-diabetes range); repeat in 3 months; dietary and lifestyle modifications advised', '2025-02-13 11:00:00+00', NOW(), NOW());

COMMIT;
