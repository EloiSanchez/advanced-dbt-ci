import pytest
import re


@pytest.mark.catalog_json
def test_node_column_names(catalog_json: dict) -> None:
    for node, v in catalog_json["nodes"].items():
        if node.split(".")[0] in ("seed", "model"):
            for col in v["columns"]:
                assert re.fullmatch(
                    r"[a-z_]*", col
                ), f"{node.split('.')[0]} has wrong column name {col}"
