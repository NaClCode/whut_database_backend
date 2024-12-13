from sqlalchemy import Column, Integer, String, Enum, CHAR, Boolean
from database import Base

class Teacher(Base):
    __tablename__ = "teacher"

    id = Column(Integer, primary_key=True, autoincrement=True)  # 教师编号，主键，自增
    name = Column(String(50), nullable=False)  # 姓名，最长50字符，非空
    idcard = Column(CHAR(18), nullable=True)  # 身份证号，18字符，空
    password = Column(String(255), nullable=False)  # 密码，最长255字符，非空
    sex = Column(Enum("M", "F", "U", name="sex_enum"), nullable=False)  # 性别，枚举类型，非空
    introduction = Column(String(255), nullable=True)  # 简介，最长255字符，可为空
    profession = Column(String(100), nullable=True)  # 专业，最长100字符，可为空
    college = Column(String(100), nullable=True)  # 学院，最长100字符，可为空
    email = Column(String(100), unique=True, nullable=False) # email
    verify = Column(Boolean, default=False, nullable=False) # 验证邮箱

    def __init__(self, name, password, sex, email, introduction=None, profession=None, college=None):
        self.name = name
        self.password = password
        self.email = email
        self.sex = sex
        self.introduction = introduction
        self.profession = profession
        self.college = college
        self.verify = False

    def __repr__(self):
        return (
            f"<Teacher(id={self.id}, name={self.name}, sex={self.sex}, email={self.email}"
            f"profession={self.profession}, college={self.college})>"
        )
