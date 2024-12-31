lint:
	poetry run isort .
	poetry run black --preview .
	poetry run flakeheaven lint
	poetry run mypy credml

ci-lint:
	poetry run isort . --check --diff
	poetry run black --preview --check .
	poetry run flakeheaven lint
	poetry run mypy credml

test:
	poetry run pytest