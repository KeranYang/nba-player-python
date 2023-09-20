from pydantic import BaseModel
import json


class School(BaseModel):
    name: str = None
    city: str = None


class Player(BaseModel):
    name: str = None
    team: str = None
    position: str = None
    number: int = None
    school: School = None


if __name__ == "__main__":
    schemas = {
        "Player": Player.model_json_schema(),
        "School": School.model_json_schema(),
    }

    with open("schemas.json", "w") as file:
        json.dump(schemas, file, indent=2)
