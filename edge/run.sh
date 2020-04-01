#!/bin/bash

echo "Starting..."

#python3 src/web_streaming_classify.py \
#        --model models/inception_v2_224_quant_edgetpu.tflite \
#        --label models/imagenet_labels.txt

python3 examples/lite/examples/image_classification/raspberry_pi/classify_picamera.py
