install:
	npm install
	npm install -D autoprefixer
	npm install -D postcss-cli
	npm install -D postcss

serve:
	cd content/en/docs/Publications; make
	hugo serve
