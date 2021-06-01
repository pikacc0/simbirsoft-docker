FROM python:buster

RUN mkdir /app

WORKDIR  /app

RUN git clone https://github.com/anfederico/Flaskex . \
    && pip install -r requirements.txt \
    && touch accounts.db

EXPOSE 5000

CMD ["python", "app.py"]