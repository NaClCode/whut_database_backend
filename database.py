from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

from config import config

SQLALCHEMY_DATABASE_URL = f"mysql+pymysql://{config.database_user}:{config.database_password}@{config.database_host}:{config.database_port}/{config.database_name}"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

