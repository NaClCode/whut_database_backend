from datetime import datetime, timedelta

import jwt
from fastapi import Header, HTTPException
from pydantic import ValidationError

from config import config


def create_token(payload: dict) -> str:
    to_encode = payload.copy()
    access_token_expires = timedelta(minutes=config.token_expire_min)
    expire = datetime.utcnow() + access_token_expires
    to_encode.update({'exp': expire})
    jwt_encoded = jwt.encode(to_encode, config.token_key, config.token_algorithm)
    return jwt_encoded


def extract_payload(token: str) -> dict:
    token = token.replace('Bearer ', '')
    payload = jwt.decode(token, config.token_key, config.token_algorithm)
    return payload


def validate_token(authorization=Header(None)) -> dict:
    try:
        return extract_payload(authorization)
    except (jwt.PyJWTError, jwt.ExpiredSignatureError, ValidationError):
        raise HTTPException(status_code=401)
