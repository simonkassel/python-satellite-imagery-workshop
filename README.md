# Satellite Imagery and Python
### An introduction

Materials for 1/21/21 DataPhilly workshop

## Getting started  
*Requirements:*
* [Docker](https://docs.docker.com/get-docker/)

The content of this workshop is in a jupyter notebook (`Python_satellite_imagery_workshop.ipynb`) that is set up to run in a Docker environment. Install [Docker](https://docs.docker.com/get-docker/) if you have not already done so. __This will take a little while, so make sure to do it ahead of time!__

Clone (or download) this repo then open a command prompt or terminal and [navigate to](https://www.digitalcitizen.life/command-prompt-how-use-basic-commands/) the location of this repository. 

Build the docker container, enter the following command on in the command prompt:

`docker-compose build`

If you are on a Windows machine and this doesn't work, try using this command (copy and paste into terminal and hit enter):

`docker-compose.exe build`

This will take 10 minutes or so.

When this is done, use the command prompt again to start the jupyter kernel. Run the following command:

```
docker-compose run --rm \
	-p 8888:8888 \
	--no-deps \
	-v $(pwd):/opt/src:rw \
	--entrypoint 'jupyter notebook --allow-root --port=8888 --ip=0.0.0.0 --notebook-dir=/opt/src/' \
	python-workshop
```

If you are on a windows machine, you may need to use this version instead

```
docker-compose run --rm \
	-p 8888:8888 \
	--no-deps \
	-v ${pwd}:/opt/src:rw \
	--entrypoint 'jupyter notebook --allow-root --port=8888 --ip=0.0.0.0 --notebook-dir=/opt/src/' \
	python-workshop
```

In the terminal window there should be a link that looks something like this:

`http://127.0.0.1:8888/?token=1175f8d3d9263....`

Open the it in a web browser, select the notebook `Python_satellite_imagery_workshop` and you'll be set up to follow along.
