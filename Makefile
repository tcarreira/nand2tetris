DOCKER_IMAGE=tcarreira/nand2tetris-autograder:2.6.1

help:
	@echo "Helper make for testing your code. How to run? (depends on Docker)"
	@echo "This will test files (.hdl) inside projects/01:"
	@echo "    make 01.test"
	@echo ""
	@echo "This will only test \"Not.hdl\" inside projects/01:"
	@echo "    make 01.part P=Not"

%.test: projects/% projects/*
	@echo Testing project ${*}
	docker run --rm -v "$(shell pwd)/projects/${*}:/submission:ro" ${DOCKER_IMAGE} ${*}.test 

%.part: projects/%/${P}.hdl projects/*
	@echo "Testing part \"${P}\" inside project ${*}"
	@docker run --rm -e QUIET=yes -v "$(shell pwd)/projects/${*}:/submission:ro" ${DOCKER_IMAGE} ${*}.test \
	| jq ".tests[] | select( .number == \"${P}\" ) "

_: help
