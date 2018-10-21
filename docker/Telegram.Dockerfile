FROM python:3.6

WORKDIR /orcbot

ADD rasa/requirements.txt .

RUN pip install -r requirements.txt && \
    python -m spacy download pt

ADD . .

WORKDIR /orcbot/rasa

CMD python train-prod.py