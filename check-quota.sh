#!/usr/bin/env bash

# each CSV file has a header line that we don't count:
LINES=$(cat wordlists/* | wc -l)
FILES=$(ls wordlists/* | wc -l)
let "COUNT = $LINES - $FILES"

# quota begins on Sep 14, 2025
DNOW=$(date -d "now" +%s)
DSTART=$(date -d "Sep 13, 2025" +%s)
DAYS=$(( (DNOW - DSTART) / 86400 ))
let "QUOTA = 5 * $DAYS"

# display results
wc wordlists/* --total=never
echo ===
echo total $COUNT words, of quota $QUOTA
if [ "$COUNT" -lt "$QUOTA" ]; then
    echo WARNING: language reconstruction currently behind quota. Dark Magos Kaelith has been notified.
fi
