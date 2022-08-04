FROM centos:latest
FROM python:3.7.5-slim
LABEL author="myname@example.com"
RUN pip install flask==1.1.1 Jinja2==3.0.3 itsdangerous==2.0.1 werkzeug==2.0.1
COPY ./server.py /server.py
ENV PORT 80
CMD ["python", "-u", "/server.py"]