import pytest


@pytest.mark.catalog_json
def test_model_descr(catalog_json: dict) -> None:
    for node, v in catalog_json["nodes"].items():
        if node.split(".")[0] in ("seed", "model"):
            assert not v["description"] == "", f"{node} has no description"
