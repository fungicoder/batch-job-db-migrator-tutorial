
CREATE TABLE `department` (
  `id` bigint NOT NULL,
  `dept_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

INSERT INTO `university_mysql`.`department`(`id`, `dept_name`)  
VALUES 
(1, "Computer Science"),
(2, "Electronics & Communication"), 
(3, "Mechanical"), 
(4, "Electrical"), 
(5, "Civil");

CREATE TABLE `student` (
  `id` bigint NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `dept_id` bigint DEFAULT NULL,
  `is_active` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dept_id_fk_idx` (`dept_id`),
  CONSTRAINT `dept_id_fk` FOREIGN KEY (`dept_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `subjects_learning` (
  `id` bigint NOT NULL,
  `sub_name` varchar(45) DEFAULT NULL,
  `student_id` bigint DEFAULT NULL,
  `marks_obtained` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id_fk_idx` (`student_id`),
  CONSTRAINT `student_id_fk` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SELECT * FROM university_mysql.student;