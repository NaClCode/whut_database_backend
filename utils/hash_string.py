import hashlib

def hash_string(s: str) -> str:
    sha256 = hashlib.sha256()
    sha256.update(s.encode("utf-8"))
    return sha256.hexdigest()
