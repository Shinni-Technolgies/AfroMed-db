#!/bin/bash
set -e

echo "=== AfroMed Database Initialization ==="

echo "Running migration files..."
for f in /migrations/*.sql; do
    echo "  -> Applying: $(basename "$f")"
    psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" -f "$f"
done

echo "Running seed data..."
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" -f /seed.sql

echo "=== Database initialization complete ==="
