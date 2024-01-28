DROP TABLE IF EXISTS resume_certification CASCADE;
CREATE TABLE IF NOT EXISTS resume_certification (
    cert_name varchar(64),
    cert_url varchar(512),
    cert_id varchar(20),
    cert_desc varchar(8192),
);

