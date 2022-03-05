#!/bin/sh
while :
do
  subliminal --opensubtitles $OPENSUBTITLES_USER $OPENSUBTITLES_API_KEY download /videos -l $OPENSUBTITLES_LANG
  chown -R $USER:$USER /videos
  sleep $OPENSUBTITLES_FREQUENCY
done
