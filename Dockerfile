FROM alpine:3.9
ARG TAG=master
RUN apk add --no-cache nodejs npm git python make g++
WORKDIR /app
ADD . /app
RUN cd /app && \
  git checkout ${TAG} && \
  npm install && \
  npm run build

FROM nginx:latest
WORKDIR /app
EXPOSE 80
COPY --from=0 /steemconnect/docker_config/nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=0 /steemconnect/www /app
STOPSIGNAL SIGINT
CMD ["nginx", "-g", "daemon off;"]
