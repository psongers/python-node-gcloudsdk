ARG pythonversion
ARG nodejsversion

FROM nikolaik/python-nodejs:python${pythonversion}-nodejs${nodejsversion}

ARG gcloudsdkversion  # https://docs.docker.com/engine/reference/builder/#scope

RUN curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-${gcloudsdkversion}-linux-x86_64.tar.gz

RUN ls && tar -xf google-cloud-cli-${gcloudsdkversion}-linux-x86_64.tar.gz \
    && ./google-cloud-sdk/install.sh --quiet --path-update=true
