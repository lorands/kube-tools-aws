FROM alpine:latest

# https://aur.archlinux.org/packages/kubectl-bin/
ENV KUBECTL_VERSION "1.18.3"

# https://github.com/hypnoglow/helm-s3
ENV HELM_S3_PLUGIN_VERSION "0.9.2"

# set some defaults
ENV AWS_DEFAULT_REGION "us-east-1"

RUN apk --no-cache upgrade
RUN apk add --update bash ca-certificates git python jq

COPY install.sh /opt/install.sh
RUN /opt/install.sh

CMD bash
