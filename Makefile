install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	black *.py
	black-nb notebooks/*.ipynb

lint:
	pylint --disable=R,C *.py

all: install format lint