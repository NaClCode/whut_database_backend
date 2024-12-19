from sqlalchemy import Column, Integer, Enum, DateTime
from datetime import datetime
from database import Base

class SystemStatus(Base):
    __tablename__ = 'system_status'

    id = Column(Integer, primary_key=True)
    selection_start_time = Column(DateTime, nullable=False)
    selection_end_time = Column(DateTime, nullable=False)
    scheduling_start_time = Column(DateTime, nullable=False)
    scheduling_end_time = Column(DateTime, nullable=False)
    selection_status = Column(Enum('Pending', 'Ongoing', 'Finished'), default='Pending')
    scheduling_status = Column(Enum('Pending', 'Ongoing', 'Finished'), default='Pending')
    last_updated = Column(DateTime, default=datetime.now, onupdate=datetime.now)

    def __init__(
        self,
        selection_start_time,
        selection_end_time,
        scheduling_start_time,
        scheduling_end_time,
        selection_status='Pending',
        scheduling_status='Pending'
    ):
        self.selection_start_time = selection_start_time
        self.selection_end_time = selection_end_time
        self.scheduling_start_time = scheduling_start_time
        self.scheduling_end_time = scheduling_end_time
        self.selection_status = selection_status
        self.scheduling_status = scheduling_status

    def __repr__(self):
        return (
            f"<SystemStatus("
            f"id={self.id}, "
            f"selection_start_time='{self.selection_start_time}', "
            f"selection_end_time='{self.selection_end_time}', "
            f"scheduling_start_time='{self.scheduling_start_time}', "
            f"scheduling_end_time='{self.scheduling_end_time}', "
            f"selection_status='{self.selection_status}', "
            f"scheduling_status='{self.scheduling_status}', "
            f"last_updated='{self.last_updated}'"
            f")>"
        )
