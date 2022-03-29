FROM python:3.10

RUN apt update && apt install -y apache2
RUN a2enmod proxy_http
COPY apache-website.conf /etc/apache2/sites-available/website.conf
RUN a2ensite website
RUN a2dissite 000-default

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt gunicorn

COPY . .

EXPOSE 80
CMD service apache2 restart & gunicorn --bind 0.0.0.0:31825 mysite.wsgi
