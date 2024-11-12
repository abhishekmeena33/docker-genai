from fastapi import FastAPI
from transformers import pipeline

## create a new FASTAPI app instance

app = FastAPI()

#Initiailiz the text generation pipeline

pipe = pipeline("text2text-generation", model="google/flan-t5-small")

@app.get("/")
def home():
    return {"message": "Hello, World!"}

#Define a function to handle the GET request at '/generate'

@app.get("/generate")
def generate(text: str):
    ##use the pipeline to generate text from the input text
    output = pipe(text)

    ## return the generated text in JSON response
    return{"output": output[0]['generated_text']}