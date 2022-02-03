FROM python:3

#ADD PiCameraNotifier/ main.py /

#RUN apt-get -y install software-properties-common
#RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install python3-pip -y
RUN pip3 install picamera
RUN pip3 install pushbullet.py

CMD [ "python", "./PiCameraNotifier/main.py" ]