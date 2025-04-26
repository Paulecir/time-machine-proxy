# syntax=docker/dockerfile:1
FROM python:3.11-slim

# Instala mitmproxy sem cache
RUN pip install --no-cache-dir mitmproxy

# Cria user não-root para rodar o proxy
RUN useradd -m -s /bin/bash mitmproxy

# Copia o entrypoint e dá permissão
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

USER mitmproxy
WORKDIR /home/mitmproxy

EXPOSE 8888 8081

ENTRYPOINT ["entrypoint.sh"]
