docker.build:
	sudo docker build -t francium/hello-django:latest .

docker.run.dev:
	sudo docker run -p 8000:8000 --rm francium/hello_app:latest
