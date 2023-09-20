# Makefile

# Define the Python interpreter
PYTHON = python3

# Target to create a virtual environment
venv:
	$(PYTHON) -m venv venv

# Target to install the necessary Python packages
install: venv
	. venv/bin/activate; \
	pip install -r requirements.txt; \

# Target to run the script and generate the JSON schema
generate-schema: install
	. venv/bin/activate; \
	$(PYTHON) generate_schema.py;

# Target to clean up the project (remove generated files and virtual environment)
clean:
	rm -rf venv
	rm -f schemas.json

.PHONY: venv install generate-schema clean
