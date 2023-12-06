## Hints
* https://github.com/ondiekelijah/Flask-Docker-App/blob/main/README.md#create-a-new-application-from-scratch
* https://www.freecodecamp.org/news/how-to-dockerize-a-flask-app/

## Create Venv
```.sh
python3 -m venv venv
```

## Activate
```.sh
source venv/bin/activate
```

## Add Flask
```.sh
pip install Flask
```

## Build Requirements
```.sh
pip freeze > requirements.txt
```

## Build Docker
```.sh
docker build --tag python-docker .
```

## Show Images
```.sh
docker images
```

## Run
```.sh
./run.sh
```
or
```.sh
docker run python-docker
docker run -p 5001:5001 python-docker
docker run -p 5001:5001 --name test python-docker
``````
## URL's
```.sh
http://localhost:5001
http://localhost:5001/os
http://localhost:5001/debian
```