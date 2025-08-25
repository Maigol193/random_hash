# install:
# 	pip install --upgrade pip &&\
# 		pip install -r requirements.txt

# install-aws:
# 	pip install --upgrade pip &&\
# 		pip install -r requirements-aws.txt
		
# install-amazon-linux:
# 	pip install --upgrade pip &&\
# 		pip install -r amazon-linux.txt

# lint:
# 	pylint --disable=R,C hello.py

# format:
# 	black *.py

# test:
# 	python -m pytest -vv --cov=hello test_hello.py

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
    pylint --disable=R,C random_hash.py

format:
    black *.py

test:
    python random_hash.py
