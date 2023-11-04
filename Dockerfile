FROM python:3-alpine3.18
LABEL Author = "Babur"
EXPOSE 5000
RUN mkdir /msdocs-python-flask-webapp-quickstart
WORKDIR /msdocs-python-flask-webapp-quickstart
ADD . /msdocs-python-flask-webapp-quickstart
RUN cd /msdocs-python-flask-webapp-quickstart && pip3 install flask
CMD ["flask", "run", "-h", "0.0.0.0"]
