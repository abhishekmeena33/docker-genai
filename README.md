# FastAPI Text Generation API

This repository contains a **FastAPI** application that provides a simple **text generation** API using Hugging Face's `transformers` library. It leverages the `google/flan-t5-small` model to generate text based on input prompts, making it ideal for quick text generation or experimentation with NLP models.

## Features

- **FastAPI Framework**: A modern, fast (high-performance), web framework for building APIs with Python 3.9+.
- **Text Generation Model**: Uses Hugging Face's `google/flan-t5-small` model for text2text generation.
- **Dockerized Setup**: Simplifies the process of building and running the app with Docker, ensuring compatibility across environments.
- **API Endpoints**:
  - `/`: A home endpoint that returns a simple greeting message.
  - `/generate`: Accepts a `text` query parameter and returns generated text based on the input.

## Getting Started

### Prerequisites

Make sure you have **Docker** installed, or you can run the app locally with Python 3.9+ and the required dependencies.

### Clone the Repository

```bash
git clone https://github.com/yourusername/fastapi-text-generation-api.git
cd fastapi-text-generation-api
```

### Running with Docker

1. **Build the Docker Image**: First, build the Docker image from the provided Dockerfile.
   ```bash
   docker build -t fastapi-app .
   ```
   
2. **Run the Docker Container**: Once the image is built, run the container on port 7860.
   ```bash
   docker run -p 7860:7860 fastapi-app
   ```
   
### Running Locally (Without Docker)

If you'd like to run the app locally without Docker, make sure you have Python 3.9+ and the required dependencies installed:

1. **Install the Requirements**:
   ```bash
   pip install -r requirements.txt
   ```
   
2. **Start the FastAPI Server**:
   ```bash
   uvicorn app:app --host 0.0.0.0 --port 7860
   ```
   Your app will be available at `http://localhost:7860.`


## API Endpoints

### 1. Home Endpoint
- **URL**: `/`
- **Method**: `GET`
- **Response**:
  ```
  {
    "message" : "Hello, World!"
  }
  ```
### 2. Generate Text
- **URL**: `/generate?text={input_text}`
- **Method**: `GET`
- **Query Parameter**: `text`(string) - Input text to generate from.
- **Response**:
  ```
  {
    "output" : "Generated text based on the input text."
  }
  ```

## Hugging Face Space

For a live demo of the text generation API, visit the Hugging Face Space:

[Text Generation API on Hugging Face Space](https://samsamurai33-text2text-with-dockers.hf.space/docs#/default/generate_generate_get) (click on `Try it out` button)

You can try out the API and explore further documentation and example queries there.

## Technologies used
- **FastAPI**: Fast and asynchronous web framework for building APIs in Python.
- **Hugging Face Transformers**: Python library for state-of-the-art Natural Language Processing (NLP).
- **Docker**: Containerization for consistent and portable application deployment.
