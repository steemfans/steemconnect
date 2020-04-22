FROM alpine:3.9
ARG TAG=master
RUN apk add --no-cache nodejs npm git python make g++
RUN git clone https://github.com/steemit/steemconnect && \
  cd steemconnect && \
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
