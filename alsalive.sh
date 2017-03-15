#!/bin/bash

# while-menu-dialog: a menu driven system information program

DIALOG_CANCEL=1
DIALOG_ESC=255
HEIGHT=0
WIDTH=0

display_result() {
  dialog --title "$1" \
    --no-collapse \
    --msgbox "$result" 0 0
}

while true; do
  exec 3>&1
  selection=$(dialog \
    --backtitle "alsaaudio live" \
    --title "Menu" \
    --clear \
    --cancel-label "Exit" \
    --menu "Please select format or rate:\
    for stop press ctrl+c" $HEIGHT $WIDTH 15 \
    "1" "s8" \
    "2" "u8" \
    "3" "s16_le" \
    "4" "s16_be" \
    "5" "u16_le" \
    "6" "u16_be" \
    "7" "s24_le" \
    "8" "s24_be" \
    "9" "u24_le" \
    "10" "u24_be" \
    "11" "s32_le" \
    "12" "s32_be" \
    "13" "u32_le" \
    "14" "u32_be" \
    "15" "float_le" \
    "16" "float_be" \
    "17" "float64_le" \
    "18" "float64_be" \
    "19" "iec958_subframe_le" \
    "20" "iec958_subframe_be" \
    "21" "mu_law" \
    "22" "a_law" \
    "23" "ima_adpcm" \
    "24" "mpeg" \
    "25" "gsm" \
    "26" "special" \
    "27" "s24_3le" \
    "28" "s24_3be" \
    "29" "u24_3le" \
    "30" "u24_3be" \
    "31" "s20_3le" \
    "32" "s20_3be" \
    "33" "u20_3le" \
    "34" "u20_3be" \
    "35" "s18_3le" \
    "36" "s18_3be" \
    "37" "u18_3le" \
    "38" "rate 4000" \
    "39" "rate 8000" \
    "40" "rate 16000" \
    "41" "rate 32000" \
    "42" "rate 42100" \
    "43" "rate 44100" \
    "44" "rate 64000" \
    "45" "rate 94000" \
    "46" "rate 128000" \
    "47" "rate 192000" \
    "48" "cd quality" \
    "49" "cdr quality" \
    "50" "dat quality" \
    2>&1 1>&3)
  exit_status=$?
  exec 3>&-
  case $exit_status in
    $DIALOG_CANCEL)
      clear
      echo "Program terminated."
      exit
      ;;
    $DIALOG_ESC)
      clear
      echo "Program aborted." >&2
      exit 1
      ;;
  esac
  
  
  case $selection in
 
      1)
      arecord -f S8 -c 2 -t raw -r 44100  | aplay -f S8 -c 2 -t raw -r 44100 -V stereo
      ;;
      2)
      arecord -f U8 -c 2 -t raw -r 44100  | aplay -f U8 -c 2 -t raw -r 44100 -V stereo
      ;;
      3)
      arecord -f S16_LE -c 2 -t raw -r 44100  | aplay -f S16_LE -c 2 -t raw -r 44100 -V stereo
      ;;
      4)
      arecord -f S16_BE -c 2 -t raw -r 44100  | aplay -f S16_BE -c 2 -t raw -r 44100 -V stereo
      ;;
      5)
      arecord  -f U16_LE -c 2 -t raw -r 44100  | aplay -f U16_LE -c 2 -t raw -r 44100 -V stereo
      ;;
      6)
      arecord  -f U16_BE -c 2 -t raw -r 44100  | aplay -f U16_BE -c 2 -t raw -r 44100 -V stereo
      ;;
      7)
      arecord  -f S24_LE -c 2 -t raw -r 44100  | aplay -f S24_LE -c 2 -t raw -r 44100 -V stereo
      ;;
      8)
      arecord  -f S24_BE -c 2 -t raw -r 44100  | aplay -f S24_BE -c 2 -t raw -r 44100 -V stereo
      ;;
      9)
      arecord  -f U24_LE -c 2 -t raw -r 44100  | aplay -f U24_LE -c 2 -t raw -r 44100 -V stereo
      ;;
      10)
      arecord  -f U24_BE -c 2 -t raw -r 44100  | aplay -f U24_BE -c 2 -t raw -r 44100 -V stereo
      ;;
      11)
      arecord  -f S32_LE -c 2 -t raw -r 44100  | aplay -f S32_LE -c 2 -t raw -r 44100 -V stereo
      ;;
      12)
      arecord  -f S32_BE -c 2 -t raw -r 44100  | aplay -f S32_BE -c 2 -t raw -r 44100 -V stereo
      ;;
      13)
      arecord  -f U32_LE -c 2 -t raw -r 44100  | aplay -f U32_LE -c 2 -t raw -r 44100 -V stereo
      ;;
      14)
      arecord  -f U32_BE -c 2 -t raw -r 44100  | aplay -f U32_BE -c 2 -t raw -r 44100 -V stereo
      ;;
      15)
      arecord  -f FLOAT_LE -c 2 -t raw -r 44100  | aplay -f FLOAT_LE -c 2 -t raw -r 44100 -V stereo
      ;;
      16)
      arecord  -f FLOAT_BE -c 2 -t raw -r 44100  | aplay -f FLOAT_BE -c 2 -t raw -r 44100 -V stereo
      ;;
      17)
      arecord  -f FLOAT64_LE -c 2 -t raw -r 44100  | aplay -f FLOAT64_LE -c 2 -t raw -r 44100 -V stereo
      ;;
      18)
      arecord  -f FLOAT64_BE -c 2 -t raw -r 44100  | aplay -f FLOAT64_BE -c 2 -t raw -r 44100 -V stereo
      ;;
      19)
      arecord  -f IEC958_SUBFRAME_LE -c 2 -t raw -r 44100  | aplay -f IEC958_SUBFRAME_LE -c 2 -t raw -r 44100 -V stereo
      ;;
      20)
      arecord  -f IEC958_SUBFRAME_BE -c 2 -t raw -r 44100  | aplay -f IEC958_SUBFRAME_BE -c 2 -t raw -r 44100 -V stereo
      ;;
      21)
      arecord  -f MU_LAW -c 2 -t raw -r 44100  | aplay -f MU_LAW -c 2 -t raw -r 44100 -V stereo
      ;;
      22)
      arecord  -f A_LAW -c 2 -t raw -r 44100  | aplay -f A_LAW -c 2 -t raw -r 44100 -V stereo
      ;;
      23)
      arecord  -f IMA_ADPCM -c 2 -t raw -r 44100  | aplay -f IMA_ADPCM -c 2 -t raw -r 44100 -V stereo
      ;;
      24)
      arecord  -f MPEG -c 2 -t raw -r 44100  | aplay -f MPEG -c 2 -t raw -r 44100 -V stereo
      ;;
      25)
      arecord  -f GSM -c 2 -t raw -r 44100  | aplay -f GSM -c 2 -t raw -r 44100 -V stereo
      ;;
      26)
      arecord  -f SPECIAL -c 2 -t raw -r 44100  | aplay -f SPECIAL -c 2 -t raw -r 44100 -V stereo
      ;;
      27)
      arecord  -f S24_3LE -c 2 -t raw -r 44100  | aplay -f S24_3LE -c 2 -t raw -r 44100 -V stereo
      ;;
      28)
      arecord  -f S24_3BE -c 2 -t raw -r 44100  | aplay -f S24_3BE -c 2 -t raw -r 44100 -V stereo
      ;;
      29)
      arecord  -f U24_3LE -c 2 -t raw -r 44100  | aplay -f U24_3LE -c 2 -t raw -r 44100 -V stereo
      ;;
      30)
      arecord  -f U24_3BE -c 2 -t raw -r 44100  | aplay -f U24_3BE -c 2 -t raw -r 44100 -V stereo
      ;;
      31)
      arecord  -f S20_3LE -c 2 -t raw -r 44100  | aplay -f S20_3LE -c 2 -t raw -r 44100 -V stereo
      ;;
      32)
      arecord  -f S20_3BE -c 2 -t raw -r 44100  | aplay -f S20_3BE -c 2 -t raw -r 44100 -V stereo
      ;;
      33)
      arecord  -f U20_3LE -c 2 -t raw -r 44100  | aplay -f U20_3LE -c 2 -t raw -r 44100 -V stereo
      ;;
      34)
      arecord  -f U20_3BE -c 2 -t raw -r 44100  | aplay -f U20_3BE -c 2 -t raw -r 44100 -V stereo
      ;;
      35)
      arecord  -f S18_3LE -c 2 -t raw -r 44100  | aplay -f S18_3LE -c 2 -t raw -r 44100 -V stereo
      ;;
      36)
      arecord  -f S18_3BE -c 2 -t raw -r 44100  | aplay -f S18_3BE -c 2 -t raw -r 44100 -V stereo
      ;;
      37)
      arecord  -f U18_3LE -c 2 -t raw -r 44100  | aplay -f U18_3LE -c 2 -t raw -r 44100 -V stereo
      ;;
      38)
      arecord 	-t raw -r 4000	 | 	aplay -t raw -r 4000
      ;;
      39)
      arecord 	-t raw -r 8000	 | 	aplay -t raw -r 8000	
      ;;
      40)
      arecord 	-t raw -r 16000	 | 	aplay -t raw -r 16000 -V stereo
      ;;
      41)
      arecord 	-t raw -r 32000	 | 	aplay -t raw -r 32000 -V stereo
      ;;
      42)
      arecord 	-t raw -r 42100	 | 	aplay -t raw -r 42100 -V stereo
      ;;
      43)
      arecord 	-t raw -r 44100	 | 	aplay -t raw -r 44100 -V stereo
      ;;
      44)
      arecord 	-t raw -r 64000	 | 	aplay -t raw -r 64000 -V stereo
      ;;
      45)
      arecord 	-t raw -r 94000	 | 	aplay -t raw -r 94000 -V stereo
      ;;
      46)
      arecord 	-t raw -r 128000	 | 	aplay -t raw -r 128000 -V stereo
      ;;
      47)
      arecord 	-t raw -r 192000	 | 	aplay  -t raw -r 192000 -V stereo
      ;;
      48)
      arecord 	-f cd	 | 	aplay  -f cd -V stereo
      ;;
      49)
      arecord 	-f cdr	 | 	aplay  -f cdr -V stereo
      ;;
      50)
      arecord 	-f dat	 | 	aplay  -r dat -V stereo
      ;;
      
  esac
done