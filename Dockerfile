FROM ubuntu:latest AS builder

WORKDIR /app

COPY . /app
RUN apt-get update; \
    apt-get upgrade; \
    apt-get dist-upgrade; \
    apt-get install -y bash curl file git unzip xz-utils zip;

RUN git clone https://github.com/flutter/flutter.git -b beta /root/flutter
ENV PATH="$PATH:/root/flutter/bin"
RUN echo $PATH

RUN flutter precache

RUN flutter clean; \
    flutter build web --release;

FROM nginx:alpine
#COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/build/web /usr/share/nginx/html
