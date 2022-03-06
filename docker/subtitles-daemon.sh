#!/bin/sh
while :
do
  echo "Running subtitles fetch..."
  subliminal --opensubtitles $OPENSUBTITLES_USER $OPENSUBTITLES_PASSWORD --omdb $OMDB_API_KEY --addic7ed $ADDIC7ED_USER $ADDIC7ED_PASSWORD download /videos -l $FETCH_LANG
  chown -R $FILESYSTEM_USER:$FILESYSTEM_USER /videos
  echo "-------------"
  date 
  echo "Sleeping for $FETCH_FREQUENCY seconds..."
  echo "-------------"
  sleep $FETCH_FREQUENCY
done
