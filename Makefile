
bin/pip:
	virtualenv .

deps: bin/pip
	bin/pip install -r requirements.txt

test:	deps
	bin/tox

dist:
	bin/python setup.py dist

clean:
	- rm -rf include bin lib local share build dist man ./.tox statsd.egg-info
	- rm pip-selfcheck.json
	- find . -type f -name "*.pyc" -delete
	- find . -type f -name "*.pyo" -delete
