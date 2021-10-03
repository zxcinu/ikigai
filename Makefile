test:
	pytest
lint:
	mypy src/
	flake8
	isort .
run:
	uvicorn src.main:app --reload
check:
	curl localhost:8000/