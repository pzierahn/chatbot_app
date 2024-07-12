FROM ubuntu:latest AS builder

WORKDIR /app

COPY . /app
RUN apt-get update; \
    apt-get upgrade -y; \
    apt-get dist-upgrade -y; \
    apt-get install -y bash curl file git unzip xz-utils zip;

RUN git clone https://github.com/flutter/flutter.git --depth 1 -b beta /root/flutter
ENV PATH="$PATH:/root/flutter/bin"

RUN flutter precache --web \
      --no-ios \
      --no-linux \
      --no-macos \
      --no-fuchsia \
      --no-windows; \
    flutter clean; \
    flutter build web --release;

FROM nginx:alpine

# Copy the nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the build output to replace the default nginx contents.
COPY --from=builder /app/build/web /usr/share/nginx/html
