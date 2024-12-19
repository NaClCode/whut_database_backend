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
    classroom_id INTEGER NOT NULL,      -- Classroom
    class_id INTEGER NOT NULL,          -- Class ID, foreign key, not null
    PRIMARY KEY (id),                   -- Primary key on 'id'
    FOREIGN KEY (class_id) REFERENCES class(id), -- Foreign key reference to 'class' table
    FOREIGN KEY (classroom_id) REFERENCES classroom(id) -- -- Foreign key reference to 'classroom' table
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

CREATE TABLE classroom (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,  -- 教室ID，主键
    name VARCHAR(100) NOT NULL,             -- 教室名称，例如 'Lab1', 'Room101'
    capacity INTEGER NOT NULL,              -- 教室容纳人数
    type ENUM('C', 'S') NOT NULL,            -- 教室类型，例如实验室、普通教室、研讨室等
    location VARCHAR(255)                  -- 教室位置，例如 'Building A, Floor 2'
);

CREATE TABLE admin (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE system_status (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,         -- 唯一标识符
    selection_start_time DATETIME NOT NULL,        -- 选课开始时间
    selection_end_time DATETIME NOT NULL,          -- 选课结束时间
    scheduling_start_time DATETIME NOT NULL,       -- 排课开始时间
    scheduling_end_time DATETIME NOT NULL,         -- 排课结束时间
    selection_status ENUM('Pending', 'Ongoing', 'Finished') NOT NULL DEFAULT 'Pending', -- 选课当前状态
    scheduling_status ENUM('Pending', 'Ongoing', 'Finished') NOT NULL DEFAULT 'Pending', -- 排课当前状态
    last_updated DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- 上次更新时间
);

-- 插入 student 样例数据
INSERT INTO student (name, idcard, sex, password, age, classer, profession, college, email, verify) 
VALUES 
('张三', '123456789012345678', 'M', 'password123', 20, '计算机101', '计算机科学', '信息学院', 'zhangsan@example.com', TRUE),
('李四', '987654321098765432', 'F', 'password456', 22, '软件201', '软件工程', '信息学院', 'lisi@example.com', FALSE);

-- 插入 teacher 样例数据
INSERT INTO teacher (name, idcard, password, sex, introduction, profession, college, email, verify) 
VALUES 
('王老师', '123456789012345678', 'password789', 'M', '拥有10年教学经验', '计算机科学', '信息学院', 'wanglaoshi@example.com', TRUE),
('刘教授', '987654321098765432', 'password101', 'F', '研究方向为人工智能', '软件工程', '信息学院', 'liujiaoshou@example.com', FALSE);

-- 插入 class_plan 样例数据
INSERT INTO class_plan (name, introduction, profession, college, credit, type) 
VALUES 
('计算机基础', '计算机基础知识课程', '计算机科学', '信息学院', 3, 'B'),
('人工智能导论', '人工智能基础课程', '软件工程', '信息学院', 4, 'X');

-- 插入 class 样例数据
INSERT INTO class (num, max_num, class_plan_id, teacher_id) 
VALUES 
(30, 50, 1, 1),
(40, 60, 2, 2);

-- 插入 classroom 样例数据
INSERT INTO classroom (name, capacity, type, location) 
VALUES 
('Lab1', 40, 'C', 'Building A, Floor 2'),
('Room101', 30, 'S', 'Building B, Floor 3');

-- 插入 class_schedule 样例数据
INSERT INTO class_schedule (start_time, end_time, classroom_id, class_id) 
VALUES 
('2024-01-01 08:00:00', '2024-01-01 10:00:00', 1, 1),
('2024-01-02 10:00:00', '2024-01-02 12:00:00', 2, 2);

-- 插入 enrollment_history 样例数据
INSERT INTO enrollment_history (student_id, class_id, action_type, action_date) 
VALUES 
(1, 1, 'Enroll', '2024-01-01 09:00:00'),
(2, 2, 'Drop', '2024-01-02 11:00:00');

-- 插入 feedback 样例数据
INSERT INTO feedback (title, content, created, is_read) 
VALUES 
('关于课程安排的建议', '希望调整课程时间，避免冲突', 1, 0),
('关于教室设施的反馈', '教室设备损坏较多，请及时维修', 2, 1);

-- 插入 student_course 样例数据
INSERT INTO student_course (student_id, class_id, grade, enrolled_date) 
VALUES 
(1, 1, 85.5, '2024-01-01 09:00:00'),
(2, 2, 92.0, '2024-01-02 10:00:00');

-- 插入 admin 样例数据
INSERT INTO admin (name, password) 
VALUES 
('系统管理员', 'admin123'),
('超级管理员', 'superadmin456');

-- 插入 system_status 样例数据
INSERT INTO system_status (selection_start_time, selection_end_time, scheduling_start_time, scheduling_end_time, selection_status, scheduling_status) 
VALUES 
('2024-01-01 00:00:00', '2024-01-10 23:59:59', '2024-01-15 00:00:00', '2024-01-20 23:59:59', 'Pending', 'Ongoing');

