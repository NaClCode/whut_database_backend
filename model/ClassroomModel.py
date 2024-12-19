from sqlalchemy import Column, Integer, Enum, String
from database import Base

class Classroom(Base):
    __tablename__ = 'classroom'
    id = Column(Integer, primary_key=True, autoincrement=True)  # 教室ID
    name = Column(String(100), nullable=False)  # 教室名称
    capacity = Column(Integer, nullable=False)  # 教室容纳人数
    type = Column(Enum('C', 'S'), nullable=False)  # 教室类型：C-普通教室, S-实验室
    location = Column(String(255))  # 教室位置

    def __init__(self, name, capacity, type, location=None):
        self.name = name
        self.capacity = capacity
        self.type = type
        self.location = location

    def __repr__(self):
        return (
            f"<Classroom("
            f"id={self.id}, "
            f"name='{self.name}', "
            f"capacity={self.capacity}, "
            f"type='{self.type}', "
            f"location='{self.location}'"
            f")>"
        )
