CREATE TABLE hello_world (
	id int auto_increment NOT NULL,
	`text` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
	`language` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
	CONSTRAINT `PRIMARY` PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci
COMMENT='';

CREATE TABLE users (
	id bigint auto_increment NOT NULL,
	username varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
	email varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
	password varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
	CONSTRAINT `PRIMARY` PRIMARY KEY (id),
	CONSTRAINT UK6dotkott2kjsp8vw4d0m25fb7 UNIQUE KEY (email),
	CONSTRAINT UKr43af9ap4edm43mmtq01oddj6 UNIQUE KEY (username),
	CONSTRAINT email_UNIQUE UNIQUE KEY (email),
	CONSTRAINT username_UNIQUE UNIQUE KEY (username)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci
COMMENT='';

CREATE TABLE roles (
	id int auto_increment NOT NULL,
	name varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
	CONSTRAINT `PRIMARY` PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci
COMMENT='';

CREATE TABLE user_roles (
	user_id bigint NOT NULL,
	role_id int NOT NULL,
	CONSTRAINT `PRIMARY` PRIMARY KEY (user_id,role_id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci
COMMENT='';
CREATE INDEX FKh8ciramu9cc9q3qcqiv4ue8a6 USING BTREE ON user_roles (role_id);

INSERT INTO roles(name) VALUES('ROLE_USER');
INSERT INTO roles(name) VALUES('ROLE_MODERATOR');
INSERT INTO roles(name) VALUES('ROLE_ADMIN');



mysql> describe users;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| id       | bigint(20)   | NO   | PRI | NULL    | auto_increment |
| email    | varchar(50)  | YES  | UNI | NULL    |                |
| password | varchar(120) | YES  |     | NULL    |                |
| username | varchar(20)  | YES  | UNI | NULL    |                |
+----------+--------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql> describe roles;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int(11)     | NO   | PRI | NULL    | auto_increment |
| name  | varchar(20) | YES  |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
2 rows in set (0.00 sec)

mysql> describe user_roles;
+---------+------------+------+-----+---------+-------+
| Field   | Type       | Null | Key | Default | Extra |
+---------+------------+------+-----+---------+-------+
| user_id | bigint(20) | NO   | PRI | NULL    |       |
| role_id | int(11)    | NO   | PRI | NULL    |       |
+---------+------------+------+-----+---------+-------+
2 rows in set (0.00 sec)