# has working firefox and xvfb. TODO: try to get smaller base working such as alpine.
FROM ubuntu:latest

# prepare all deps for python
RUN apt-get update
RUN apt-get install -y xvfb
RUN apt-get install -y firefox
RUN apt-get install -y python-setuptools python-dev build-essential
RUN apt-get install -y python-pip

# python set up of robot framework
RUN pip install --upgrade pip
RUN pip install robotframework
RUN pip install robotframework-selenium2library
RUN pip install selenium

# needed for selenium and firefox test apis
ADD lib/geckodriver.gz /tmp/geckodriver.gz
RUN gunzip /tmp/geckodriver.gz
RUN mv /tmp/geckodriver /usr/bin/geckodriver
RUN chmod u+x /usr/bin/geckodriver

# copy across scenario tests and run them with headless display
COPY scenario/ /scenario
CMD (xvfb-run robot /scenario)
