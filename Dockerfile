FROM greenwall/gcloud-kubectl:latest

ENV HELM_VERSION v2.6.2

RUN set -ex ; \
  apk --no-cache --virtual .setup_dependencies add ca-certificates wget; \
  wget https://storage.googleapis.com/kubernetes-helm/helm-${HELM_VERSION}-linux-amd64.tar.gz; \
  tar xzf helm-${HELM_VERSION}-linux-amd64.tar.gz; \
  mv linux-amd64/helm /google-cloud-sdk/bin/helm; \
  apk del .setup_dependencies;