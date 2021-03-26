UNAME_S := $(shell uname -s)
build: 
	go build ./cmd/mvs-vm-cli

install: build
	sudo cp mvs-vm-cli /usr/local/bin/

package: build 
	tar -czvf mvs-vm-cli.tar.gz --transform 's,^,mvs-vm-cli/,' mvs-vm-cli README.md LICENSE

clean: 
	rm mvs-vm-cli

.PHONY: install test build
