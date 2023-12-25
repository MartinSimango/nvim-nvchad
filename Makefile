install-go:
	# install dependent libraries for for Go language 
	go install github.com/segmentio/golines@latest
	go install mvdan.cc/gofumpt@latest
	go install github.com/incu6us/goimports-reviser/v3@latest
