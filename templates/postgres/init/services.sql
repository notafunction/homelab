CREATE ROLE openproject;
ALTER ROLE openproject WITH PASSWORD '${ADMIN_PASSWORD}';
ALTER ROLE openproject WITH LOGIN;
CREATE DATABASE openproject;
GRANT ALL PRIVILEGES ON DATABASE openproject TO openproject;

CREATE ROLE nextcloud;
ALTER ROLE nextcloud WITH PASSWORD '${ADMIN_PASSWORD}';
ALTER ROLE nextcloud WITH LOGIN;
CREATE DATABASE nextcloud;
GRANT ALL PRIVILEGES ON DATABASE nextcloud TO nextcloud;

CREATE ROLE gitea;
ALTER ROLE gitea WITH PASSWORD '${ADMIN_PASSWORD}';
ALTER ROLE gitea WITH LOGIN;
CREATE DATABASE gitea;
GRANT ALL PRIVILEGES ON DATABASE gitea TO gitea;

CREATE ROLE miniflux;
ALTER ROLE miniflux WITH PASSWORD '${ADMIN_PASSWORD}';
ALTER ROLE miniflux WITH LOGIN;
CREATE DATABASE miniflux;
GRANT ALL PRIVILEGES ON DATABASE miniflux TO miniflux;
ALTER USER miniflux WITH SUPERUSER;

CREATE ROLE synapse;
ALTER ROLE synapse WITH PASSWORD '${ADMIN_PASSWORD}';
ALTER ROLE synapse WITH LOGIN;
CREATE DATABASE synapse ENCODING 'UTF8' LC_COLLATE='C' LC_CTYPE='C' template=template0 OWNER synapse;
GRANT ALL PRIVILEGES ON DATABASE synapse TO synapse;