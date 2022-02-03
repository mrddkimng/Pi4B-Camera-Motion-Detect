FROM python:3

#ADD PiCameraNotifier/ main.py /

#RUN apt-get -y install software-properties-common
#RUN apt-get -y update && apt-get -y upgrade

RUN pip install picamera -y
RUN pip install pushbullet.py -y

CMD [ "python", "./PiCameraNotifier/main.py" ]