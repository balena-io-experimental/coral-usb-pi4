FROM balenalib/raspberrypi3

# Install some utilities we will need
RUN echo "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main" | sudo tee /etc/apt/sources.list.d/coral-edgetpu.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
RUN apt-get update && apt -y install python3 python3-pip zlib1g-dev libjpeg8-dev \
	libedgetpu1-std git vim python3-numpy python3-picamera python3-pillow

# Set our working directory
WORKDIR /usr/src/app

# Need udev for some dynamic dev nodes
ENV UDEV=1

# get examples
RUN git clone https://github.com/tensorflow/examples.git

COPY requirements.txt requirements.txt

#RUN pip3 install https://dl.google.com/coral/python/tflite_runtime-2.1.0.post1-cp37-cp37m-linux_aarch64.whl

COPY models/ models/

COPY src/ src/

COPY run.sh run.sh

#RUN pip3 install https://dl.google.com/coral/python/tflite_runtime-2.1.0.post1-cp36-cp36m-linux_armv7l.whl

# Flip the camera vertically
ENV VFLIP=True

CMD ["bash","run.sh"]
CMD ["bash"]
