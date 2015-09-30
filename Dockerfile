FROM python:3.4
ADD . /code
WORKDIR /code
RUN apt-get update && apt-get -y install nginx build-essential python3-dev supervisor
RUN pip install uWSGI
COPY site /etc/nginx/sites-enabled/

EXPOSE 80

CMD /usr/bin/supervisord -n -c /code/supervisor.conf

