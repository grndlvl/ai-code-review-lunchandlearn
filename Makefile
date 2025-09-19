build:
	npx marp slide-deck.md \
		--allow-local-files \
		--html \
		--output slide-deck.html

dev:
	npx marp slide-deck.md \
		--watch \
		--allow-local-files \
		--html \
		--output slide-deck.html

.PHONY: build
