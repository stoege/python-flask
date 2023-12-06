# syntax=docker/dockerfile:1

# Debian 11.x (44 MB), Slim
#FROM python:3.11-slim-buster

# Debian 11.x (336 MB), Fat
#FROM python:3.11-buster

# Debian 12.x (48 MB), Slim
FROM python:3.11-slim-bookworm

# Debian 12.x (360 MB), Fat
#FROM python:3.11-bookworm


WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=5001"]