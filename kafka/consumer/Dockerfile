FROM python:3.10-slim
ENV PYTHONDONTWRITEBYTECODE=1
RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc git libssl-dev g++ make && \
    cd /tmp && git clone https://github.com/edenhill/librdkafka && \
    cd librdkafka && git checkout tags/v2.0.2 && \
    ./configure && make && make install && \
    ldconfig && \
    cd ../ && rm -rf librdkafka
RUN pip install --upgrade pip
COPY consumer .
RUN pip install -r requirements.txt
CMD ["python3", "-u", "./consumer.py"]
