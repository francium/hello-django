docker.build.dev:
	sudo docker build -t francium/hello_app:latest .

docker.run.dev:
	sudo docker run -p 8000:8000 -v $(pwd):/usr/src/app --rm francium/hello_app:latest
