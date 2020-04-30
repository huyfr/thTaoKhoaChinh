-- create table user(
-- user_id int auto_increment,
-- username varchar (40),
-- password varchar (255),
-- email varchar (255),
-- primary key (user_id)
-- );

-- CREATE TABLE roles(
--    role_id INT AUTO_INCREMENT primary key,
--    role_name VARCHAR(50)
-- );

CREATE TABLE userroles(
   user_id INT NOT NULL,
   role_id INT NOT NULL,
   PRIMARY KEY(user_id,role_id),
   FOREIGN KEY(user_id) REFERENCES users(user_id),
   FOREIGN KEY(role_id) REFERENCES roles(role_id)
);