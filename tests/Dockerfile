FROM python:3.8

WORKDIR /testing

RUN pip install selenium
COPY ./extract_geoshop_smoke.py /testing/

ENTRYPOINT [ "python3", "-m", "unittest", "discover", "--pattern=*.py" ]
