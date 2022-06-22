from dataclasses import dataclass
from dataclasses import dataclass
from database import Base
from sqlalchemy import Column, DateTime, ForeignKey, Integer, String, func


from datetime import datetime

@dataclass
class Post(Base):
    __tablename__ = 'posts'

    id: int
    description: str
    created_by: str
    created_at: datetime

    id = Column(Integer, primary_key=True)
    description = Column(String)
    created_by = Column(String)
    created_at = Column(DateTime)    
