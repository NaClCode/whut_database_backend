from pydantic_settings import BaseSettings, SettingsConfigDict

class Config(BaseSettings):
    bind_host: str = "0.0.0.0"
    bind_port: int = 8000

    backend_host: str = "http://127.0.0.1"

    user_email_max: int = 30
    user_name_min: int = 4
    user_name_max: int = 20
    user_password_min: int = 6
    user_password_max: int = 20

    database_user: str
    database_password: str
    database_host: str = "localhost"
    database_port: int = 3306
    database_name: str

    token_key: str = "secret_key_database"
    token_algorithm: str = "HS256"
    token_expire_min: int = 1440

    email_smtp_server: str = ""
    email_smtp_port: int = 465
    email_smtp_user: str = ""
    email_smtp_password: str = ""

    model_config = SettingsConfigDict(env_file=".env", env_file_encoding="utf-8")


config = Config()
