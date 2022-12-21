create database mms;
create user mms with encrypted password 'mms';
grant all privileges on database mms to mms;
\c mms postgres
grant all on schema public to mms;