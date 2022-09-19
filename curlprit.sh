#!/bin/bash
FILENAME="packages.txt"
LINES=$(cat $FILENAME)
for LINE in $LINES
do
    packageName=$LINE
    depsList="$( pacman -Si "${packageName}" 2>/dev/null )"
    depsList="$( \
            awk \
                -F ": " \
                -v searchToken="Depends On     " \
                ' \
                   $0 ~ searchToken \
                    { \
                        gsub(/[>=<]*[0-9.\-]* /," ",$2) ; \
                        gsub(/ +/,"\n",$2) ; \
                        print $2 ; \
                    } \
                ' <<< "${depsList}" \
        )" 

    if [[ $depsList =~ "systemd" ]]; then
        echo "--- $LINE depends on systemd, here's the full list:"
        echo $depsList
        echo "-------------"
    fi
    unset depsList
done
