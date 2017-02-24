FROM alpine:3.4

# Install kubectl
# Note: Latest version may be found on:
# https://aur.archlinux.org/packages/kubectl-bin/
ADD https://storage.googleapis.com/kubernetes-release/release/v1.5.1/bin/linux/amd64/kubectl /usr/local/bin/kubectl

RUN set -x
RUN apk add --no-cache curl ca-certificates
RUN chmod +x /usr/local/bin/kubectl

# Basic check it works.
RUN kubectl version --client

ADD cert /root/certs
RUN mkdir -p /root/.kube
Add config /root/.kube

ENTRYPOINT ["/usr/local/bin/kubectl"]
