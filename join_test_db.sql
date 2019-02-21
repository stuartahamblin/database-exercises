# JOIN EXAMPLE DATABASE
# 1. Create a database named join_test_db and run the SQL provided in the Join Example DB section above;
# to create the same setup used for this lesson.
show databases;
CREATE DATABASE join_test_db;
show databases;
Use join_test_db;
CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);
INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');
INSERT INTO users (name, email, role_id) VALUES
                                                ('bob', 'bob@example.com', 1),
                                                ('joe', 'joe@example.com', 2),
                                                ('sally', 'sally@example.com', 3),
                                                ('adam', 'adam@example.com', 3),
                                                ('jane', 'jane@example.com', null),
                                                ('mike', 'mike@example.com', null);
SELECT * FROM roles;
SELECT * FROM users;

# 2. Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
INSERT INTO users (name, email, role_id) VALUES
                                                ('stuart', 'stuart@example.com', 2),
                                                ('justin', 'justin@example.com', null),
                                                ('karen', 'karen@example.com', 2),
                                                ('kyla', 'kyla@example.com', 2);
show tables;
select * from users;
select * from roles;

# 3. Use join, left join, and right join to combine results from the users and roles tables as we did in
# the lesson. Before you run each query, guess the expected number of results.
SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

# 4. Although not explicitly covered in the lesson, aggregate functions like count can be used with join
# queries. Use count and the appropriate join type to get a list of roles along with the number of users
# that has the role. Hint: You will also need to use group by in the query.
SELECT users.role_id AS role, roles.name AS role_name, count(*)
FROM users
JOIN roles ON users.role_id = roles.id
GROUP BY role;
