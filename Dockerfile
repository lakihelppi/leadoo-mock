FROM node:20-alpine

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"

RUN corepack enable

WORKDIR /app

RUN pnpm install -g @mockoon/cli@8.2.0
COPY ./data.json ./data.json

# Install curl for healthcheck and tzdata for timezone support.
RUN apk --no-cache add curl tzdata

# Do not run as root.
RUN adduser --shell /bin/sh --disabled-password --gecos "" mockoon
RUN chown -R mockoon ./data.json
USER mockoon

EXPOSE 3004

ENTRYPOINT ["mockoon-cli","start","--disable-log-to-file","--data","./data.json", "--hostname", "0.0.0.0", "--port","3004"]
