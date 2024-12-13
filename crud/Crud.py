from abc import ABC, abstractmethod
from typing import TypeVar, Generic, Type, List, Union
from sqlalchemy.orm import Session

T = TypeVar('T')  # 泛型，表示实体类

class AbstractCrud(ABC, Generic[T]):
    def __init__(self, model: Type[T]):
        self.model = model

    @abstractmethod
    def create(self, db: Session, **kwargs) -> T:
        """
        创建一条记录
        """
        pass

    def get_by_id(self, db: Session, record_id: int) -> Union[T, None]:
        """
        根据ID获取记录
        """
        return db.query(self.model).filter(self.model.id == record_id).first()

    def get_all(self, db: Session) -> List[T]:
        """
        获取所有记录
        """
        return db.query(self.model).all()

    def update(self, db: Session, obj: T, **kwargs) -> T:
        """
        更新记录
        """
        for key, value in kwargs.items():
            if hasattr(obj, key):
                setattr(obj, key, value)
        db.commit()
        db.refresh(obj)
        return obj

    def delete(self, db: Session, obj: T) -> T:
        """
        删除记录
        """
        db.delete(obj)
        db.commit()
        return obj

    def delete_by_id(self, db: Session, record_id: int) -> Union[T, None]:
        """
        根据ID删除记录
        """
        obj = self.get_by_id(db, record_id)
        if obj:
            self.delete(db, obj)
        return obj
