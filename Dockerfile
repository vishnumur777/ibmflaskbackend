FROM python:3.10
WORKDIR /app
ADD . /app
COPY requirements.txt /app
RUN python3 -m pip install -r requirements.txt
RUN python3 -m pip install -U flask-cors
EXPOSE 8080
CMD ["python3","app.py"]
