FROM python:3-alpine3.18
LABEL Author = "Babur"
EXPOSE 5000
RUN mkdir /msdocs-python-flask-webapp-quickstart
WORKDIR /msdocs-python-flask-webapp-quickstart
ADD . /msdocs-python-flask-webapp-quickstart
RUN cd msdocs-python-flask-webapp-quickstart && python3 -m venv .venv && source .venv/bin/activate && pip install -r requirements.txt
CMD ["flask", "run", "-h", "0.0.0.0"]