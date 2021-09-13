FROM python:3.6.7

ENV PYTHONUNBUFFERED 1

RUN apt-get -y update
RUN apt-get -y install vim
RUN apt-get install -y python3 python3-pip
RUN apt-get install -y mysql-server
RUN pip install mysqlclient  




RUN apt-get install -y python3 python3-pip 
RUN apt-get install -y mysql-server
RUN pip install mysqlclient

RUN mkdir /srv/docker-server
ADD . /srv/docker-server

WORKDIR /srv/docker-server


RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
#RUN apt install command-not-found
#RUN apt install language-selector
#RUN apt install MarkupSafe
#RUN apt install distro-info
#RUN apt install ec2-hibinit-agent
#RUN apt install hibagent
#RUN apt install PAM
#RUN apt install PyGObject
#RUN apt install python-apt==1.6.5+ubuntu0.5
#RUN apt install sos
#RUN apt install systemd-python==234
#RUN apt install ufw==0.36
#RUN apt install unattended-upgrades==0.1
#RUN apt install zope.interface==4.3.2

RUN pip install -r requirements.txt

#EXPOSE 8000
#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

