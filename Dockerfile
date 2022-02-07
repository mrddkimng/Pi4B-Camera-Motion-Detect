FROM python:2.7-buster

#ADD main.py /
#RUN apt-get -y update 
#RUN apt-get -y install software-properties-common
#RUN apt-add-repository 'deb http://raspbian.raspberrypi.org/raspbian/ buster main contrib non-free rpi firmware'
RUN apt-get -y update && apt-get -y upgrade
RUN apt install -y ffmpeg

#RUN apt-get install python3-pip -y
ENV READTHEDOCS=True 
RUN pip install --upgrade pip setuptools wheel
RUN pip install picamera
RUN pip install pushbullet.py
RUN pip install numpy
#WORKDIR /home/pi/Pi4B-Camera-Motion-Detect/PiCameraNotifier
#CMD ["python", "./main.py"]