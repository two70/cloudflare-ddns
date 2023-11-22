FROM ghcr.io/two70/s6-alpine

RUN apk add --no-cache jq curl bind-tools

ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2 CF_API=https://api.cloudflare.com/client/v4 RRTYPE=A CRON="*/5	*	*	*	*"

COPY root /
