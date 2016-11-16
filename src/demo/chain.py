from __future__ import print_function

from celery import signature

from demo import celery_app


def test_celery_link():
    second_task = signature('test.tasks.foo', args=None)

    # call second_task by itself with no args
    test_async = second_task.delay()
    print(test_async.get())
    # Demo console: u'Z:3.14159265359'   Worker console: foo: abcdef:3.14159265359

    # call first_task and pass the result to second_task
    test_async = celery_app.send_task('test.tasks.foo', args=('abcdef',), link=second_task)
    print(test_async.get())
    # Demo console: u'abcdef:3.14159265359'   Worker console: foo: abcdef:3.14159265359:3.14159265359
    # we only get the result of the first call, but Celery handles calling the second for us


if __name__ == '__main__':
    test_celery_link()
