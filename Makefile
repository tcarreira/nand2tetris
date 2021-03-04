help:
	@echo "Helper make for testing your code. How to run? (depends on Docker)"
	@echo "This will test files (.hdl) inside projects/01:"
	@echo "    make 01.test"
	@echo ""
	@echo "This will only test \"Not.hdl\" inside projects/01:"
	@echo "    make 01.part P=Not"

%.test: projects/% projects/*
	@echo Testing project ${*}
	docker run --rm -v "$(shell pwd)/projects/${*}:/submission:ro" tcarreira/nand2tetris-autograder ${*}.test 

%.part: projects/%/${P}.hdl projects/*
	@echo "Testing part \"${P}\" inside project ${*}"
	@docker run --rm -e QUIET=yes -v "$(shell pwd)/projects/${*}:/submission:ro" tcarreira/nand2tetris-autograder ${*}.test \
	| jq ".tests[] | select( .number == \"${P}\" ) "

_: help
