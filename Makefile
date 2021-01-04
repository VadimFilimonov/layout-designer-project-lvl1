install:
	npm install

lint:
	npx stylelint ./src/styles/*.css
	npx htmlhint ./src/*.html

deploy:
	npx surge ./src/

develop:
	npx browser-sync start --server "src" --files "src/*"
