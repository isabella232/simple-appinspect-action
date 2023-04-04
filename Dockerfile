# Container image that runs the action
FROM python:3.11

RUN pip install requests

COPY run_appinspect.py /github/workspace
COPY entrypoint.sh /

WORKDIR /github/workspace
ENTRYPOINT ["bash", "/entrypoint.sh"]
