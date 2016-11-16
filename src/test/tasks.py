from __future__ import print_function

from celery import shared_task
import numpy as np


@shared_task
def foo(abc='Z'):
    s = '{}:{}'.format(abc, np.pi)
    print('foo: {}'.format(s))
    return s


@shared_task(ignore_result=True)
def bar(abc='Z'):
    s = '{}:{}'.format(abc, np.pi)
    print('bar: {}'.format(s))
    return s


@shared_task
def asdf(abc='Z'):
    s = '{}:{}'.format(abc, np.pi)
    print('asdf: {}'.format(s))
    return s
