FROM python:alpine

RUN pip install --upgrade pip
RUN pip install subliminal
COPY subtitles-daemon.sh /usr/bin/subtitles-daemon.sh
RUN chmod +x /usr/bin/subtitles-daemon.sh

ENTRYPOINT ["/usr/bin/subtitles-daemon.sh"]
