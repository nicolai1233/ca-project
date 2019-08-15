FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install  -y python-pip python-dev build-essential
COPY . . 
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "run.py"]
