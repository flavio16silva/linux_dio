#!/bin/bash
echo "configurando docker"

FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
