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

# likewise count kinsyl-spread.csv
#LINES=$(cat kinsyl-spread.csv | wc -l)
INCOMPLETE=$(grep "\.\.\." kinsyl-spread.csv | wc -l)
SPREAD_GOAL=158
let "SPREAD = $SPREAD_GOAL - $INCOMPLETE"

# quota begins on Sep 14, 2025
DNOW=$(date -d "now" +%s)
#session1: DSTART=$(date -d "Sep 13, 2025" +%s)
DSTART=$(date -d "Jan 07, 2026" +%s)
DAYS=$(( (DNOW - DSTART) / 86400 ))
#session1: let "QUOTA = 5 * $DAYS"
let "QUOTA = 500 + 5 * $DAYS"

# count commits
COMMITS=$(git log --oneline | wc -l)

# display results
wc wordlists/* --total=never
echo ===
echo total $COUNT words, of quota $QUOTA
echo total $SPREAD lines, of kinsyl-spread.csv goal $SPREAD_GOAL
echo total $HIRSHI HirShi/KanShi readings
echo total $COMMITS commits
if [ "$COUNT" -lt "$QUOTA" ]; then
    echo ===
    echo WARNING: language reconstruction currently behind quota.
    echo Dark Magos Kaelith has been notified.
fi
