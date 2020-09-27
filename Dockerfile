FROM scratch AS meta
LABEL maintainer="Zachary Wilson"
LABEL maintainer.email="wilsonze@gmail.com"
FROM python:alpine AS build
RUN apk --no-cache update && \
    apk --no-cache add gcc libxml2-dev libxslt-dev libc-dev libffi-dev openssl-dev
RUN adduser -D -g '' scrapyd
USER scrapyd
WORKDIR /home/scrapyd
ENV PYTHONUBUFFERED=1
ENV PATH=$PATH:/home/scrapyd/bin:/home/scrapyd/.local/bin
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
FROM build as main
EXPOSE 6800
ENTRYPOINT ["scrapyd"]
