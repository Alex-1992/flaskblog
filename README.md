# Bluelog

*A blue blog.*

> Example application for *[Python Web Development with Flask](https://helloflask.com/en/book/1)* (《[Flask Web 开发实战](https://helloflask.com/book/1)》).

Demo: http://bluelog.helloflask.com

![Screenshot](https://helloflask.com/screenshots/bluelog.png)

## Installation

clone:
```
$ git clone https://github.com/greyli/bluelog.git
$ cd bluelog
```
create & activate virtual env then install dependency:

with venv/virtualenv + pip:
```
$ python -m venv env  # use `virtualenv env` for Python2, use `python3 ...` for Python3 on Linux & macOS
$ source env/bin/activate  # use `env\Scripts\activate` on Windows
$ pip install -r requirements.txt
```
or with Pipenv:
```
$ pipenv install --dev
$ pipenv shell
```
generate fake data then run:
```
$ flask forge
$ flask run
* Running on http://127.0.0.1:5000/
```

Test account:

* username: `admin`
* password: `helloflask`


