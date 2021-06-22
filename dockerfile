# FROM nginx:vi
FROM nginx

COPY localhost.crt /etc/ssl/localhost.crt
COPY localhost.key /etc/ssl/localhost.key
COPY nginx.conf /etc/nginx/nginx.conf


EXPOSE 80
EXPOSE 443

VOLUME ["/server/assets", "/server/log"]

## CMD/ENTRYPOINT: 最后出现的会生效, 无论在哪一层中. CMD <> ENTRYPOINT.
# CMD ["nginx", "-c", "/etc/nginx/nginx.conf", "-s", "reload"]