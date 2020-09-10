FROM python:3.5-alpine

ADD statuspage /statuspage
COPY requirements/base.txt /statuspage/requirements.txt

RUN pip install -r /statuspage/requirements.txt

WORKDIR /statuspage

ENTRYPOINT [ "python",  "/statuspage/statuspage.py" ]
CMD [ "--help"]
