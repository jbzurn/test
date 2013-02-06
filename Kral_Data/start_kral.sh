while true; do
  killall kral
  kral stream --services="$(cat services.txt)" --queries="$(cat queries.txt)" > `date +%Y%m%d%H%M`.txt &
  sleep $[30*60];
done
