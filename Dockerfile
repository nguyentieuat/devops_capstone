FROM python:3.7.3-stretch

WORKDIR /app

COPY . app.py /app/

<<<<<<< HEAD
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
=======
RUN pip install --upgrade pip &&\
	pip install --trusted-host pypi.python.org -r requirements.txt
>>>>>>> parent of a293679 (devops_capstone)

EXPOSE 80

CMD ["python", "app.py"]
