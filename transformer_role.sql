
CREATE ROLE "TRANSFORMER";

GRANT USAGE ON WAREHOUSE TRANSFORMING TO ROLE TRANSFORMER;
GRANT ALL ON DATABASE ANALYTICS TO ROLE TRANSFORMER;
GRANT ALL ON DATABASE RAW TO ROLE TRANSFORMER;

GRANT ALL ON SCHEMA RAW.JAFFLE_SHOP TO ROLE TRANSFORMER;
GRANT ALL ON SCHEMA RAW.STRIPE TO ROLE TRANSFORMER;

GRANT ALL ON ALL TABLES IN DATABASE RAW TO ROLE TRANSFORMER;
GRANT ALL ON ALL VIEWS IN DATABASE RAW TO ROLE TRANSFORMER;
GRANT ALL ON FUTURE TABLES IN DATABASE RAW TO ROLE TRANSFORMER;
GRANT ALL ON FUTURE VIEWS IN DATABASE RAW TO ROLE TRANSFORMER;

GRANT ALL ON ALL TABLES IN DATABASE ANALYTICS TO ROLE TRANSFORMER;
GRANT ALL ON ALL VIEWS IN DATABASE ANALYTICS TO ROLE TRANSFORMER;
GRANT ALL ON FUTURE TABLES IN DATABASE ANALYTICS TO ROLE TRANSFORMER;
GRANT ALL ON FUTURE VIEWS IN DATABASE ANALYTICS TO ROLE TRANSFORMER;

GRANT ROLE TRANSFORMER TO USER MISHA;

SHOW GRANTS TO ROLE TRANSFORMER;
SHOW GRANTS OF ROLE TRANSFORMER;