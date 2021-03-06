ck data
album=$(mpc -f "%album%" | head -n 1 | head -c 22)
artist=$(mpc -f "%artist%" | head -n 1 | head -c 29)
date=$(mpc -f "%date%" | head -n 1)
title=$(mpc -f "%title%" | head -n 1 | head -c 29)

# Get progress % of song
percent=$(mpc | grep -o '[(0-9][0-9]%' | grep -o '[0-9]*')

# Define colors
red='\e[0;31m'
white='\e[1;38m'
yellow='\e[1;33m'

# Define the lenght of the red part
case $percent in
    [0-2])
        bar="$yellow──────────────────────────────"
        ;;
    [3-5])
        bar="─$yellow─────────────────────────────"
        ;;
    [6-9])
        bar="──$yellow────────────────────────────"
        ;;
    1[0-2])
        bar="───$yellow───────────────────────────"
        ;;
    1[3-5])
        bar="────$yellow──────────────────────────"
        ;;
    1[6-9])
        bar="─────$yellow─────────────────────────"
        ;;
    2[0-2])
        bar="──────$yellow────────────────────────"
        ;;
    2[3-5])
        bar="───────$yellow───────────────────────"
        ;;
    2[6-9])
        bar="────────$yellow──────────────────────"
        ;;
    3[0-2])
        bar="─────────$yellow─────────────────────"
        ;;
    3[3-5])
        bar="──────────$yellow────────────────────"
        ;;
    3[6-9])
        bar="───────────$yellow───────────────────"
        ;;
    4[0-2])
        bar="────────────$yellow──────────────────"
        ;;
    4[3-5])
        bar="─────────────$yellow─────────────────"
        ;;
    4[6-9])
        bar="──────────────$yellow────────────────"
        ;;
    5[0-2])
        bar="───────────────$yellow───────────────"
        ;;
    5[3-5])
        bar="────────────────$yellow──────────────"
        ;;
    5[6-9])
        bar="─────────────────$yellow─────────────"
        ;;
    6[0-2])
        bar="──────────────────$yellow────────────"
        ;;
    6[3-5])
        bar="───────────────────$yellow───────────"
        ;;
    6[6-9])
        bar="────────────────────$yellow──────────"
        ;;
    7[0-2])
        bar="─────────────────────$yellow─────────"
        ;;
    7[3-5])
        bar="──────────────────────$yellow────────"
        ;;
    7[6-9])
        bar="───────────────────────$yellow───────"
        ;;
    8[0-2])
        bar="────────────────────────$yellow──────"
        ;;
    8[3-5])
        bar="─────────────────────────$yellow─────"
        ;;
    8[6-9])
        bar="──────────────────────────$yellow────"
        ;;
    9[0-2])
        bar="───────────────────────────$yellow───"
        ;;
    9[3-5])
        bar="────────────────────────────$yellow──"
        ;;
    9[6-9])
        bar="─────────────────────────────$yellow─"
        ;;
    100)
        bar="──────────────────────────────$yellow"
        ;;
esac

# Send content to music_popup.sh
echo -e " $white$date - $album"
echo -e ""
echo -e " $white$artist"
echo -e ""
echo -e " $white$title"
echo -e ""
echo -e ""
echo -e ""
