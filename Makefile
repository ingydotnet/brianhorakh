all: new-style.yaml

new-style.yaml: new-style.pgx
	pegex compile --to=yaml $< > $@
