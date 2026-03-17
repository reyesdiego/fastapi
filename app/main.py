import os
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    version = os.getenv("AWS_CODE_DEPLOY_DEPLOYMENT_DESCRIPTION", "unknown")
    return {"message": "Hello World", "status": "ok", "version": version}


@app.get("/health")
def health_check():
    return {"status": "ok"}