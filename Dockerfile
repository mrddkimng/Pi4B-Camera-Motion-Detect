FROM buildpack-deps:buster

#ADD PiCameraNotifier/ main.py /
#RUN apt-get -y update 
#RUN apt-get -y install software-properties-common
#RUN apt-add-repository 'deb http://raspbian.raspberrypi.org/raspbian/ buster main contrib non-free rpi firmware'
RUN apt-get -y update && apt-get -y upgrade

RUN apt-get install python3-pip -y
RUN pip3 install picamera
RUN pip3 install pushbullet.py

CMD [ "python", "./PiCameraNotifier/main.py" ]