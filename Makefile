compile:
		@./node_modules/stylus/bin/stylus stylus/main.styl -o stylesheets -c
server:
		@python -m SimpleHTTPServer
lint: compile
		@node ./node_modules/csslint/cli.js stylesheets/