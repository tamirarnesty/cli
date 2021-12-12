EXE =
ifeq ($(GOOS),windows)
EXE = .exe
endif

# just a convenience task around `go test`
.PHONY: test
test:
	go test ./...

## The following tasks delegate to `script/build.go` so they can be run cross-platform.

.PHONY: bin/cli$(EXE)
bin/cli$(EXE): script/build
	@script/build $@
