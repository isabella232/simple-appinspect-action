# Container image that runs the action
FROM python:3.11

RUN pip install requests

COPY run_appinspect.py /
COPY entrypoint.sh /

RUN ls /

ENTRYPOINT ["bash", "/entrypoint.sh"]
