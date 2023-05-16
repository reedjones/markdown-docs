FROM python:3.9
RUN pip install --upgrade pip
RUN pip install -Iv -U pyyaml==5.3.1
RUN pip install -Iv -U Jinja2==3.1.2
RUN pip install -Iv --force markupsafe==2.0.1

COPY ./ /generatedocs

ENTRYPOINT ["python", "/generatedocs/src/main.py"]
