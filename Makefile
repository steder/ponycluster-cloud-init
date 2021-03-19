build:
	docker build -t ponytest .
	docker run --rm -it ponytest bash /var/lib/cloud/scripts/per-instance/setup.sh


