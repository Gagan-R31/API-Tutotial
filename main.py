from fastapi import FastAPI
from pydantic import BaseModel
import logging

# Initialize logging
logging.basicConfig(level=logging.INFO)

app = FastAPI()

class Item(BaseModel):
    name: str
    company: str
    joining_date: str

@app.get("/")
def read_root():
    return {"message": "Welcome to Ini8labs "}

@app.post("/api/data/")
def create_item(item: Item):
    logging.info(f"Received item: {item}")
    return {"item": item}
