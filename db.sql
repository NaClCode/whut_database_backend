use database_exp;

CREATE TABLE student (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    idcard CHAR(18),
    sex ENUM('M', 'F', 'U') NOT NULL,
    password VARCHAR(255) NOT NULL,
    age INTEGER,
    classer VARCHAR(50),
    profession VARCHAR(100),
    college VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    verify BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE teacher (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    idcard CHAR(18),
    password VARCHAR(255) NOT NULL,
    sex ENUM('M', 'F', 'U') NOT NULL,
    introduction VARCHAR(255),
    profession VARCHAR(100),
    college VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    verify BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE class (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    num INTEGER NOT NULL DEFAULT 0,
    max_num INTEGER NOT NULL,
    class_plan_id INTEGER NOT NULL,
    teacher_id INTEGER NOT NULL,
    FOREIGN KEY(class_plan_id) REFERENCES class_plan(id),
    FOREIGN KEY(teacher_id) REFERENCES teacher(id)
);
CREATE TABLE class_plan (
    id INTEGER NOT NULL AUTO_INCREMENT, -- Class plan ID, primary key, auto-increment
    name VARCHAR(100) NOT NULL,         -- Class name, max length 100 characters, not null
    introduction VARCHAR(255),          -- Introduction, max length 255 characters, nullable
    profession VARCHAR(100),            -- Profession, max length 100 characters, nullable
    college VARCHAR(100),               -- College, max length 100 characters, nullable
    credit INTEGER NOT NULL,            -- Credits, not null
    type ENUM('B', 'X', 'G', 'S') NOT NULL, -- Class type: B-Mandatory, X-Elective, G-Public, S-Practice, not null
    PRIMARY KEY (id)                    -- Primary key on 'id'
);
CREATE TABLE class_schedule (
    id INTEGER NOT NULL AUTO_INCREMENT, -- Course schedule ID, primary key, auto-increment
    start_time DATETIME NOT NULL,       -- Start time, not null
    end_time DATETIME NOT NULL,         -- End time, not null
    classtype ENUM('C', 'S') NOT NULL,  -- Class type: C-Classroom, S-Lab, not null
    classroom VARCHAR(100),             -- Classroom, nullable, max length 100 characters
    class_id INTEGER NOT NULL,          -- Class ID, foreign key, not null
    PRIMARY KEY (id),                   -- Primary key on 'id'
    FOREIGN KEY (class_id) REFERENCES class(id) -- Foreign key reference to 'class' table
);
CREATE TABLE enrollment_history (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    student_id INTEGER NOT NULL,
    class_id INTEGER NOT NULL,
    action_type ENUM ('Enroll', 'Drop') NOT NULL,
    action_date DATETIME NOT NULL,
    FOREIGN KEY(student_id) REFERENCES student(id),
    FOREIGN KEY(class_id) REFERENCES class(id)
);
CREATE TABLE feedback (
    feedback_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    content TEXT,
    created INTEGER NOT NULL,
    is_read INTEGER NOT NULL
);
CREATE TABLE student_course (
    student_id INTEGER NOT NULL,
    class_id INTEGER NOT NULL,
    grade FLOAT,
    enrolled_date DATETIME NOT NULL,
    PRIMARY KEY(student_id, class_id),
    FOREIGN KEY(student_id) REFERENCES student(id),
    FOREIGN KEY(class_id) REFERENCES class(id)
);

INSERT INTO teacher (name, idcard, password, sex, introduction, profession, college, email, verify) VALUES ('Teacher_1', 'IDCARDT0000001', 'pass1', 'M', 'Introduction for teacher 1', 'Profession_1', 'College_1', 'teacher1@school.edu', FALSE);
INSERT INTO teacher (name, idcard, password, sex, introduction, profession, college, email, verify) VALUES ('Teacher_2', 'IDCARDT0000002', 'pass2', 'F', 'Introduction for teacher 2', 'Profession_2', 'College_0', 'teacher2@school.edu', FALSE);
INSERT INTO teacher (name, idcard, password, sex, introduction, profession, college, email, verify) VALUES ('Teacher_3', 'IDCARDT0000003', 'pass3', 'M', 'Introduction for teacher 3', 'Profession_0', 'College_1', 'teacher3@school.edu', FALSE);
INSERT INTO teacher (name, idcard, password, sex, introduction, profession, college, email, verify) VALUES ('Teacher_4', 'IDCARDT0000004', 'pass4', 'F', 'Introduction for teacher 4', 'Profession_1', 'College_0', 'teacher4@school.edu', FALSE);
INSERT INTO teacher (name, idcard, password, sex, introduction, profession, college, email, verify) VALUES ('Teacher_5', 'IDCARDT0000005', 'pass5', 'U', 'Introduction for teacher 5', 'Profession_2', 'College_1', 'teacher5@school.edu', FALSE);
INSERT INTO class_plan (name, introduction, profession, college, credit, type) VALUES ('Plan_1', 'Introduction_1', 'Profession_1', 'College_1', 3, 'B');
INSERT INTO class_plan (name, introduction, profession, college, credit, type) VALUES ('Plan_2', 'Introduction_2', 'Profession_2', 'College_0', 4, 'X');
INSERT INTO class_plan (name, introduction, profession, college, credit, type) VALUES ('Plan_3', 'Introduction_3', 'Profession_0', 'College_1', 2, 'G');
INSERT INTO class_plan (name, introduction, profession, college, credit, type) VALUES ('Plan_4', 'Introduction_4', 'Profession_1', 'College_0', 5, 'S');
INSERT INTO class_plan (name, introduction, profession, college, credit, type) VALUES ('Plan_5', 'Introduction_5', 'Profession_2', 'College_1', 3, 'B');
INSERT INTO class (num, max_num, class_plan_id, teacher_id) VALUES (15, 30, 1, 1);
INSERT INTO class (num, max_num, class_plan_id, teacher_id) VALUES (20, 30, 2, 2);
INSERT INTO class (num, max_num, class_plan_id, teacher_id) VALUES (12, 30, 3, 3);
INSERT INTO class (num, max_num, class_plan_id, teacher_id) VALUES (10, 30, 4, 4);
INSERT INTO class (num, max_num, class_plan_id, teacher_id) VALUES (18, 30, 5, 5);
INSERT INTO class_schedule (start_time, end_time, classtype, classroom, class_id) VALUES ('2024-06-16 08:00:00', '2024-06-16 10:00:00', 'C', 'Room_101', 1);
INSERT INTO class_schedule (start_time, end_time, classtype, classroom, class_id) VALUES ('2024-06-17 09:00:00', '2024-06-17 11:00:00', 'S', 'Room_202', 2);
INSERT INTO class_schedule (start_time, end_time, classtype, classroom, class_id) VALUES ('2024-06-18 10:00:00', '2024-06-18 12:00:00', 'C', 'Room_303', 3);
INSERT INTO class_schedule (start_time, end_time, classtype, classroom, class_id) VALUES ('2024-06-19 11:00:00', '2024-06-19 13:00:00', 'S', 'Room_404', 4);
INSERT INTO class_schedule (start_time, end_time, classtype, classroom, class_id) VALUES ('2024-06-20 12:00:00', '2024-06-20 14:00:00', 'C', 'Room_505', 5);
