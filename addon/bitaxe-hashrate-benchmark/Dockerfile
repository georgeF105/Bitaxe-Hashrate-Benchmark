ARG BUILD_FROM=ghcr.io/hassio-addons/base-python:3.11
FROM ${BUILD_FROM}

WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN python3 -m pip install --no-cache-dir -r /app/requirements.txt
RUN mkdir -p /data && chmod 0775 /data

COPY bitaxe_hashrate_benchmark.py /app/bitaxe_hashrate_benchmark.py
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
