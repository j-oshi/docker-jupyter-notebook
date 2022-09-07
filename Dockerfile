# Version 3.11 not compatible at the moment downgrade to 3.!0
FROM python:3.10-slim-buster 

COPY . ./app

WORKDIR /app

RUN pip install --upgrade pip &&\ 
    pip install --upgrade setuptools &&\
    pip install -r requirements.txt &&\
    pip install .

CMD ["jupyter", "notebook", "--allow-root", "--ip=0.0.0.0"]
