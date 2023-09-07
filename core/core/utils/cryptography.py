import json
from typing import Any, NamedTuple
from uuid import UUID

from nacl.signing import SigningKey as NaClSigningKey

from .misc import bytes_to_hex


class KeyPair(NamedTuple):
    public: str
    private: str


class CustomEncoder(json.JSONEncoder):

    def default(self, obj: Any) -> Any:
        if isinstance(obj, UUID):
            return str(obj)
        return super().default(obj)


def generate_key_pair() -> KeyPair:
    signing_key = NaClSigningKey.generate()
    return KeyPair(bytes_to_hex(signing_key.verify_key), bytes_to_hex(bytes(signing_key)))
