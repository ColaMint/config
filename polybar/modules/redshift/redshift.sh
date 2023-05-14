#!/bin/sh

envFile=~/.config/polybar/modules/redshift/env.sh
source $envFile
changeValue=200

changeMode() {
  sed -i "s/REDSHIFT=.*/REDSHIFT=$1/g" $envFile 
  REDSHIFT=$1
  echo $REDSHIFT
}

changeTemp() {
  if [ "$1" -gt 1000 ] && [ "$1" -lt 25000 ]
  then
    sed -i "s/REDSHIFT_TEMP=.*/REDSHIFT_TEMP=$1/g" $envFile 
    redshift -P -O $((REDSHIFT_TEMP+changeValue))
  fi
}

case $1 in 
  on) 
    changeMode on
    changeTemp $((REDSHIFT_TEMP))
    ;;
  off) 
    changeMode off 
    redshift -x
    ;;
  toggle) 
    if [ "$REDSHIFT" = on ];
    then
      changeMode off
      redshift -x
    else
      changeMode on
      redshift -O "$REDSHIFT_TEMP"
    fi
    ;;
  increase)
    changeTemp $((REDSHIFT_TEMP+changeValue))
    ;;
  decrease)
    changeTemp $((REDSHIFT_TEMP-changeValue));
    ;;
  temperature)
    case $REDSHIFT in
      on)
        printf "%dK" "$REDSHIFT_TEMP"
        ;;
      off)
        printf "off"
        ;;
    esac
    ;;
esac
