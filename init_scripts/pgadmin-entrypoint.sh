#!/bin/bash
# =============================================================
# AfroMed — pgAdmin container entrypoint wrapper
#
# 1. Constructs DATABASE_URI from individual DB_* variables.
# 2. Generates servers.json at $PGADMIN_SERVER_JSON_FILE.
# 3. Generates a pgpass file at /tmp/pgpass.
# 4. Hands control over to the official pgAdmin entrypoint.
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

# Map to local names used below
DB_PASS="$DB_PASSWORD"

echo "==> [pgadmin-entrypoint] Constructed DATABASE_URI from env vars:"
echo "    Host = $DB_HOST  Port = $DB_PORT  DB = $DB_NAME  User = $DB_USER"

# ------------------------------------------------------------------
# Generate servers.json
# ------------------------------------------------------------------
SERVERS_FILE="${PGADMIN_SERVER_JSON_FILE:-/tmp/servers.json}"
mkdir -p "$(dirname "$SERVERS_FILE")"

cat > "$SERVERS_FILE" << SERVERS_EOF
{
  "Servers": {
    "1": {
      "Name": "${PGADMIN_SERVER_NAME:-AfroMed DB}",
      "Group": "${PGADMIN_SERVER_GROUP:-Servers}",
      "Host": "${DB_HOST}",
      "Port": ${DB_PORT},
      "MaintenanceDB": "${DB_NAME}",
      "Username": "${DB_USER}",
      "SSLMode": "${PGADMIN_SERVER_SSL_MODE:-prefer}",
      "PassFile": "/tmp/pgpass"
    }
  }
}
SERVERS_EOF

echo "==> [pgadmin-entrypoint] Generated $SERVERS_FILE"

# ------------------------------------------------------------------
# Generate pgpass  (hostname:port:database:username:password)
# ------------------------------------------------------------------
printf '%s:%s:%s:%s:%s\n' \
  "$DB_HOST" "$DB_PORT" "$DB_NAME" "$DB_USER" "$DB_PASS" \
  > /tmp/pgpass
chmod 600 /tmp/pgpass

echo "==> [pgadmin-entrypoint] Generated /tmp/pgpass"

# ------------------------------------------------------------------
# Hand off to the official pgAdmin entrypoint
# ------------------------------------------------------------------
exec /entrypoint.sh
