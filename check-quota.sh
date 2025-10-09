#!/usr/bin/env bash

# each CSV file has a header line that we don't count:
LINES=$(cat wordlists/* | wc -l)
FILES=$(ls wordlists/* | wc -l)
let "COUNT = $LINES - $FILES"

# likewise count KanShi, ignoring misc notes
LINES=$(cat hirshi/*.csv | wc -l)
FILES=$(ls hirshi/*.csv | wc -l)
let "HIRSHI = $LINES - $FILES"
# TODO: also count unique KanShi

# quota begins on Sep 14, 2025
DNOW=$(date -d "now" +%s)
DSTART=$(date -d "Sep 13, 2025" +%s)
DAYS=$(( (DNOW - DSTART) / 86400 ))
let "QUOTA = 5 * $DAYS"

# count commits
COMMITS=$(git log --oneline | wc -l)

# display results
wc wordlists/* --total=never
echo ===
echo total $COUNT words, of quota $QUOTA
echo total $HIRSHI HirShi/KanShi readings
echo total $COMMITS commits
if [ "$COUNT" -lt "$QUOTA" ]; then
    echo ===
    echo WARNING: language reconstruction currently behind quota.
    echo Dark Magos Kaelith has been notified.
fi
