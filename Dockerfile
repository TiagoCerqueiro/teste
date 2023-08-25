FROM python:3.11.1

RUN mkdir /teste
WORKDIR /teste

COPY requirements.txt .
COPY ./src ./src

RUN pip install -r requirements.txt

CMD ["python", "./src/main.py"]