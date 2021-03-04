help:
	@echo "Helper make for testing your code. How to run? (depends on Docker)"
	@echo "This will test files (.hdl) inside projects/01:"
	@echo "    make 01.test"

%.test: projects/% projects/*
	@echo Testing project ${*}
	docker run --rm -v "$(shell pwd)/projects/${*}:/submission:ro" tcarreira/nand2tetris-autograder ${*}.test 

_: help
