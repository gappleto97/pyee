setup:
	pip install -r requirements_dev.txt
	python setup.py develop

package:
	python setup.py check
	python setup.py sdist

upload:
	twine upload dist/*

test:
	make lint && tox

lint:
	python setup.py flake8

the_docs:
	python setup.py build_sphinx

clean:
	rm -rf .tox
	rm -rf dist
	rm -rf pyee.egg-info
	rm -rf pyee/*.pyc
	rm -rf pyee/__pycache__
	rm -rf pytest_runner-*.egg
	rm -rf tests/__pycache__
