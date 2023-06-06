import json

import pytest


@pytest.fixture(scope="module")
def catalog_json() -> dict:
    with open("./target/manifest.json", "r") as f:
        data = json.load(f)
    return data
