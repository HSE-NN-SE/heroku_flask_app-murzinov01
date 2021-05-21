FROM ubuntu:latest
RUN apt update
RUN apt install -y python3-pip
RUN pip3 install flask
RUN apt install -y git
RUN git clone https://github.com/HSE-NN-SE/heroku_flask_app-murzinov01 && cd heroku_flask_app-murzinov01
ENV FLASK_APP=heroku_flask_app-murzinov01/js_example
CMD python3 -m flask run --host=0.0.0.0
