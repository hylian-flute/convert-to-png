if [ $# -eq 0 ]; then
  echo Choose files to convert
  exit 1
fi
if [ ! -e ./input ]; then
  mkdir ./input
fi
if [ ! -e ./output ]; then
  mkdir ./output
fi
rm -f ./input/* && \
  rm -f ./output/* && \
  cp $@ ./input && \
  sudo docker-compose up && \
  sudo docker-compose down
