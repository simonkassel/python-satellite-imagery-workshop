# Satellite Imagery and Python
### An introduction

Materials for 1/21/21 DataPhilly workshop

## Setup  

*Requirements:*
* [Docker](https://docs.docker.com/get-docker/)

The easiest and most consistent way to reproduce the output of this notebook is to use Docker. We recommend trying to install docker if you do not already have it installed. However, some people have had issues with docker on their operating systems. If this is the case for you, you can try installing the dependencies manually with the instructions at the bottom of this README.

The content of this workshop is in a jupyter notebook (`Python_satellite_imagery_workshop.ipynb`) that is set up to run in a Docker environment. Install [Docker](https://docs.docker.com/get-docker/) if you have not already done so. __This will take a little while, so make sure to do it ahead of time!__

To test if your docker installation is working correctly you can run `docker run hello-world`.

Clone (or download) this repo then open a command prompt or terminal and [navigate to](https://www.digitalcitizen.life/command-prompt-how-use-basic-commands/) the location of this repository. 

__All instructions assume that you have downloaded this full repo and are within its main directory__

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

## If you aren't able to install Docker

You will need to install GDAL. Follow the instructions for [mac](https://trac.osgeo.org/gdal/wiki/BuildingOnMac) or [windows](https://trac.osgeo.org/gdal/wiki/BuildingOnWindows). There are lots of additional resources online that will help you troubleshoot issues you are having with GDAL installation.

You will also need Python3 and Pip installed.

Once those are set up, you will need to add all of the dependencies in `requirements.txt`. You can install them all at once with the command `pip install -r requirements.txt`, or one at a time (e.g. `pip install geopandas==0.8.1`). Some of these packages may have dependencies that are not present on your machine. Follow error messages to resolve these.

Once these are done, you can start the Jupyter server locally by running `jupyter notebook` and opening up the resulting link in your browser.

It may be useful to try running the notebook before the workshop to ensure that everything istalled correctly.

## If you would like to use Google Colab instead

1. Download the Jupyter notebook specifically for colab [https://github.com/simonkassel/python-satellite-imagery-workshop/blob/main/Python_satellite_imagery_workshop.ipynb](https://github.com/simonkassel/python-satellite-imagery-workshop/blob/main/Python_satellite_imagery_workshop.ipynb)
1. Upload the notebook to your Google Drive.
1. In Google Drive, right click on the notebook, hover over "Open With" and select "Google Colaboratory".
1. Make sure you run the first two code cells to pip install package dependencies and clone the Github repository before trying to run any other cells.
