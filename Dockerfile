FROM python:3.4
RUN apt-get update && apt-get -y install nginx build-essential python3-dev supervisor
RUN pip install uWSGI
RUN pip install Flask
RUN rm /etc/nginx/sites-enabled/default
COPY site /etc/nginx/sites-enabled/
ADD . /code

EXPOSE 80

CMD /usr/bin/supervisord -n -c /code/supervisor.conf

