ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyNewPass@1';
uninstall plugin validate_password;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'password';