test:
	pytest
lint:
	flake8
	isort .
run:
	uvicorn ikigai.main:app --reload
check:
	curl localhost:8000/