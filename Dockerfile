ARG pythonversion 3.9
ARG nodejsversion 17
ARG gcloudsdkversion 382.0.0

FROM nikolaik/python-nodejs:python${pythonversion}-nodejs${nodejsversion}

RUN curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-${gcloudsdkversion}-linux-x86_64.tar.gz

RUN ls && tar -xf google-cloud-cli-${gcloudsdkversion}-linux-x86_64.tar.gz \
    && ./google-cloud-sdk/install.sh --quiet --path-update=true
