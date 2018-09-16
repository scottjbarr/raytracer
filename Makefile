# command to build and run on the local OS.
GO_BUILD = go build

.PHONY: build

all: clean prepare build

prepare:
	mkdir -p dist

clean:
	rm -rf dist

build: build-colours

build-colours:
	$(GO_BUILD) -o dist/colours cmd/colours/main.go

run-colours:
	dist/colours > tmp/colours.ppm && eog tmp/colours.ppm
