clean:
	rm -rf public/exhibition/

styles:
	compass compile

update:
	mkdir -p public/exhibition
	cp -rf ../exhibition/public/* public/exhibition/
	rm -rf public/exhibition/*config.js

config:
	cp config.js public/exhibition/config.js

compile: clean update config

.PHONY: styles