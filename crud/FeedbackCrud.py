from typing import Type

from sqlalchemy.orm import Session

from model.FeedbackModel import Feedback


class FeedbackCrud:
    @staticmethod
    def create_feedback(db: Session, title: str, content: str, created: int, is_read: int, user_id: int) -> Feedback:
        feedback = Feedback(title, content, created, is_read, user_id)
        db.add(feedback)
        db.commit()
        db.refresh(feedback)
        return feedback

    @staticmethod
    def get_feedback_by_id(db: Session, feedback_id: int) -> Feedback:
        return db.query(Feedback).filter(Feedback.feedback_id == feedback_id).first()

    @staticmethod
    def get_all_feedbacks(db: Session) -> list[Type[Feedback]]:
        return db.query(Feedback).all()

    @staticmethod
    def get_all_unread_feedbacks(db: Session) -> list[Type[Feedback]]:
        return db.query(Feedback).filter(Feedback.is_read == 0).all()

    @staticmethod
    def update_feedback(db: Session, feedback: Feedback) -> Feedback:
        db.commit()
        db.refresh(feedback)
        return feedback

    @staticmethod
    def delete_feedback(db: Session, feedback: Type[Feedback]) -> None:
        db.delete(feedback)
        db.commit()
