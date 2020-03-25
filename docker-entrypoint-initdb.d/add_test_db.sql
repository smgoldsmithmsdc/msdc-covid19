CREATE USER camden_local_user_test with password 'password_test';
CREATE DATABASE "camden-coronavirus_test";
GRANT ALL PRIVILEGES ON DATABASE "camden-coronavirus_test" TO camden_local_user_test;