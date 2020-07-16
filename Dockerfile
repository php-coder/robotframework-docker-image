FROM python:3.8.4-slim-buster
ARG ROBOT_VERSION
RUN pip install --no-cache-dir robotframework==${ROBOT_VERSION}
