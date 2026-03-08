#!/bin/bash
# =============================================================
# AfroMed — PostgreSQL container entrypoint wrapper
#
# Constructs DATABASE_URI from individual DB_* variables and
# exports the POSTGRES_* variables that the official postgres
# docker-entrypoint.sh expects, then hands control over to it.
#
# Required env vars: DB_USER, DB_PASSWORD, DB_HOST, DB_PORT, DB_NAME
# =============================================================
set -e

# ------------------------------------------------------------------
# Validate required DB connection variables
# ------------------------------------------------------------------
: "${DB_USER:?ERROR: DB_USER is not set.}"
: "${DB_PASSWORD:?ERROR: DB_PASSWORD is not set.}"
: "${DB_HOST:?ERROR: DB_HOST is not set.}"
: "${DB_PORT:?ERROR: DB_PORT is not set.}"
: "${DB_NAME:?ERROR: DB_NAME is not set.}"

# ------------------------------------------------------------------
# Construct DATABASE_URI from individual components
# ------------------------------------------------------------------
export DATABASE_URI="postgresql://${DB_USER}:${DB_PASSWORD}@${DB_HOST}:${DB_PORT}/${DB_NAME}"

# ------------------------------------------------------------------
# Export POSTGRES_* variables for the official postgres entrypoint
# ------------------------------------------------------------------
export POSTGRES_USER="$DB_USER"
export POSTGRES_PASSWORD="$DB_PASSWORD"
export POSTGRES_DB="$DB_NAME"

echo "==> [db-entrypoint] Constructed DATABASE_URI from env vars:"
echo "    POSTGRES_USER = $POSTGRES_USER"
echo "    POSTGRES_DB   = $POSTGRES_DB"
echo "    Host:Port     = ${DB_HOST}:${DB_PORT}"

# ------------------------------------------------------------------
# Hand off to the official postgres entrypoint (passes CMD through)
# ------------------------------------------------------------------
exec docker-entrypoint.sh "$@"
