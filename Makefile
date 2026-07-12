.PHONY: check generate

check:
	test -z "$$(gofmt -l $$(find . -name '*.go'))"
	go test ./...

generate:
	test -n "$(SOURCE_DIR)"
	buf generate "$(SOURCE_DIR)" --template buf.gen.yaml
