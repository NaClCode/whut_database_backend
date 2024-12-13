from sqlalchemy import Column, Integer, String, CHAR, Enum, Boolean
from database import Base

class Student(Base):
    __tablename__ = "student"

    id = Column(Integer, primary_key=True, autoincrement=True)  # 学号，主键，自增
    name = Column(String(50), nullable=False)  # 姓名，最长50字符，非空
    idcard = Column(CHAR(18), nullable=True)  # 身份证号，18字符，空
    sex = Column(Enum("M", "F", "U", name="sex_enum"), nullable=False)  # 性别，枚举类型，非空
    password = Column(String(255), nullable=False)  # 密码，最长255字符，非空
    age = Column(Integer, nullable=True)  # 年龄，可为空
    classer = Column(String(50), nullable=True)  # 班级，最长50字符，可为空
    profession = Column(String(100), nullable=True)  # 专业，最长100字符，可为空
    college = Column(String(100), nullable=True)  # 学院，最长100字符，可为空
    email = Column(String(100), unique=True, nullable=False) # email, 邮箱
    verify = Column(Boolean, default=False, nullable=False) # 验证邮箱

    def __init__(self, name, idcard, sex, password, age=None, classer=None, profession=None, college=None, email=None):
        self.name = name
        self.idcard = idcard
        self.sex = sex
        self.password = password
        self.age = age
        self.classer = classer
        self.profession = profession
        self.college = college
        self.email = email
        self.verify = False

    def __repr__(self):
        return f"<Student(id={self.id}, name={self.name}, idcard={self.idcard}, sex={self.sex}, age={self.age}, email={self.email})>"
