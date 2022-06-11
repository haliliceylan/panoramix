FROM python:3.8
RUN useradd --create-home --shell /bin/bash panoramix
WORKDIR /home/panoramix
COPY . .
RUN pip install --no-cache-dir .
WORKDIR /app
USER panoramix
WORKDIR /app
ENTRYPOINT [ "panoramix" ]