#!/bin/sh
set -e

# Garante que o diretório de config exista e tenha a permissão correta
mkdir -p /home/mitmproxy/.mitmproxy
chown -R mitmproxy:mitmproxy /home/mitmproxy/.mitmproxy

# Executa mitmweb em modo proxy + UI web
exec mitmweb \
  --mode regular \
  --listen-host 0.0.0.0 --listen-port 8888 \
  --web-host 0.0.0.0   --web-port 8081
