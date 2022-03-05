#!/bin/sh
while :
do
  echo "Running subtitles fetch..."
  subliminal --opensubtitles $OPENSUBTITLES_USER $OPENSUBTITLES_API_KEY download /videos -l $OPENSUBTITLES_LANG
  chown -R $USER:$USER /videos
  echo "-------------"
  date 
  echo "Sleeping for $OPENSUBTITLES_FREQUENCY seconds..."
  echo "-------------"
  sleep $OPENSUBTITLES_FREQUENCY
done
