install:
	go install -v -x -a -buildmode=shared runtime sync/atomic
	go install -v -x -work -buildmode=shared -linkshared
	go install ctpStd

build:
	go build -v -x -linkshared -o ctp ./demo/*.go