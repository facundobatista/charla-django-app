# charla-django-app

App demo para la charla de Django


# Probando...

Esto funca ok:

```
fades -r requirements.txt -x gunicorn --bind 0.0.0.0:8000 mysite.wsgi
```

Pero queremos hacerlo "no local", no nos sale:

```
cd /tmp

fades -r /home/facundo/devel/reps/charla-django-app/requirements.txt -x gunicorn --bind 0.0.0.0:8000 /home/facundo/devel/reps/charla-django-app/mysite.wsgi 
PYTHONPATH=/home/facundo/devel/reps/charla-django-app/ fades -r /home/facundo/devel/reps/charla-django-app/requirements.txt -x gunicorn --bind 0.0.0.0:8000 /home/facundo/devel/reps/charla-django-app/mysite.wsgi 
```
