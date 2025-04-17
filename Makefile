PYTHON := python3

install: 
	pip install --upgrade pip && \
		pip install -r requirements.txt

run:
	@$(PYTHON) main.py

test:
	@$(PYTHON) -m pytest -vv --cov=hello test_hello.py

lint:
	pylint --disable=R,C hello.py