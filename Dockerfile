FROM osgeo/gdal:ubuntu-small-3.2.1

COPY requirements.txt /tmp/requirements.txt

RUN apt-get update && \
    apt-get install -y \
        python3-pip 

RUN pip3 install -r /tmp/requirements.txt

# Open Port for Jupyter and
EXPOSE 8888

CMD ["bash"]