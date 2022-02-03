FROM arm32v7/python:3.7-buster

#ADD PiCameraNotifier/ main.py /
#RUN apt-get -y update 
#RUN apt-get -y install software-properties-common
#RUN apt-add-repository 'deb http://raspbian.raspberrypi.org/raspbian/ buster main contrib non-free rpi firmware'
RUN apt-get -y update && apt-get -y upgrade

#RUN apt-get install python3-pip -y
#EXPORT READTHEDOCS=true
#RUN pip install picamera
RUN pip install pushbullet.py

WORKDIR /home/pi/Pi4B-Camera-Motion-Detect/PiCameraNotifier
CMD ["python", "/main.py"]