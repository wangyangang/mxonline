FROM python:3.6
RUN mkdir -p /home/wyg/website/mxonline3
WORKDIR /home/wyg/website/mxonline3
COPY pip.conf /root/.pip/pip.conf
COPY requirements.txt /home/wyg/website/mxonline3/
RUN pip3 install -r /home/wyg/website/mxonline3/requirements.txt
RUN rm -rf /home/wyg/website/mxonline3
COPY . /home/wyg/website/mxonline3
CMD [ "python3", "./manage.py", "runserver", "0.0.0.0:8080"]
