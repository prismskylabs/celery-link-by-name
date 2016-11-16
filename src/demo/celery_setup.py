from celery import Celery


app = Celery('demo_celery_app')
app.config_from_object('demo.celeryconfig')
app.autodiscover_tasks(['test'])
