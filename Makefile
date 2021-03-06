install:
	npm install

lint:
	npx editorconfig-checker
	npx stylelint ./src/styles/*.css
	npx htmlhint ./src/*.html

deploy:
	npx surge ./src/

develop:
	npx browser-sync start --server "src" --no-notify --no-ui --files "src/*"
