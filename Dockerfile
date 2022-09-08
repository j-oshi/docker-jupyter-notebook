# Version 3.11 not compatible at the moment downgrade to 3.!0
FROM python:3.10-slim-buster 

WORKDIR /project

COPY . /project

RUN pip install --upgrade pip &&\ 
    pip install --upgrade build &&\
    pip install -r requirements.txt &&\
    pip install --editable .

CMD ["jupyter", "notebook", "--allow-root", "--ip=0.0.0.0"]
