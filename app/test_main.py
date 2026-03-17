import os
from main import app
from fastapi.testclient import TestClient

client = TestClient(app)


def test_read_root():
    response = client.get("/")
    assert response.status_code == 200
    version = os.getenv("AWS_REGION", "unknown")
    assert response.json() == {"message": "Hello World", 'status': 'ok', 'version': version}