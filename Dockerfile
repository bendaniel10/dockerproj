FROM python:3.7.3-stretch

# Working directory
WORKDIR /app/

# Copy soure code to working directory
COPY . app.py /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt