FROM jshimko/kube-tools-aws:latest

RUN apk --no-cache upgrade
RUN apk add --update jq

CMD bash
