FROM python:3.11.1

RUN mkdir /teste-api
WORKDIR /teste-api

COPY requirements.txt .
COPY ./src ./src

RUN pip install -r requirements.txt

CMD ["python", "./src/main.py"]