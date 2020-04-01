FROM balenalib/raspberrypi4-64-ubuntu-python

# Install some utilities we will need
RUN echo "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main" | sudo tee /etc/apt/sources.list.d/coral-edgetpu.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
RUN apt-get update && apt-get -y install wget python3-pip libedgetpu1-std zlib1g-dev libjpeg8-dev vim git

# Set our working directory
WORKDIR /usr/src/app

# Need udev for some dynamic dev nodes
ENV UDEV=1


# Set our working directory
WORKDIR /usr/src/app

COPY requirements.txt requirements.txt

#RUN pip3 install -r requirements.txt

COPY models/ models/

COPY src/ src/

COPY run.sh run.sh


# Flip the camera vertically
ENV VFLIP=True

CMD ["bash","run.sh"]
CMD ["bash"]
