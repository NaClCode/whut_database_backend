from abc import ABC, abstractmethod
from typing import TypeVar, Generic, Type, List, Union
from sqlalchemy.orm import Session

T = TypeVar('T')  # 泛型，表示实体类

class AbstractCrud(ABC, Generic[T]):
    @staticmethod
    @abstractmethod
    def create(db: Session, model: Type[T], **kwargs) -> T:
        """
        创建一条记录
        """
        pass

    @staticmethod
    def get_by_id(db: Session, model: Type[T], record_id: int) -> Union[T, None]:
        """
        根据ID获取记录
        """
        return db.query(model).filter(model.id == record_id).first()

    @staticmethod
    def get_all(db: Session, model: Type[T]) -> List[T]:
        """
        获取所有记录
        """
        return db.query(model).all()

    @staticmethod
    def update(db: Session, obj: T, **kwargs) -> T:
        """
        更新记录
        """
        for key, value in kwargs.items():
            if hasattr(obj, key):
                setattr(obj, key, value)
        db.commit()
        db.refresh(obj)
        return obj

    @staticmethod
    def delete(db: Session, obj: T) -> T:
        """
        删除记录
        """
        db.delete(obj)
        db.commit()
        return obj

    @staticmethod
    def delete_by_id(db: Session, model: Type[T], record_id: int) -> Union[T, None]:
        """
        根据ID删除记录
        """
        obj = AbstractCrud.get_by_id(db, model, record_id)
        if obj:
            AbstractCrud.delete(db, obj)
        return obj
