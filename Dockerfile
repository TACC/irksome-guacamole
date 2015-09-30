FROM python:3.4
ADD . /code
WORKDIR /code
RUN apt-get update && apt-get -y install nginx build-essential python3-dev
RUN pip install -r requirements.txt
EXPOSE 8080
CMD uwsgi --ini rt-python.ini

