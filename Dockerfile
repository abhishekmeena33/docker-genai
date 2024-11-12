##Use the official Python 3.9 image
FROM python:3.9

##set the working directory to /container
WORKDIR /code

##copy the current directory contents into the container at /code
COPY ./requirements.txt /code/requirements.txt

##install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Set up a new user name "user"
RUN useradd user

# Switch to the "user" user
USER user

# Set home directory to /home/user that is user's home directory
ENV HOME=/home/user \
    PATH=/home/user/.local/bin:$PATH

# Set the working directory to /home/user
WORKDIR $HOME/app

#Copy the current directory contents into the container at /home/user/app
COPY --chown=user . $HOME/app

## Start the FASTAPI app on port 7860
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "7860"]
