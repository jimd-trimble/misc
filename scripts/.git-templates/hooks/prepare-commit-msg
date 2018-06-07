#!/bin/sh
ORIG_MSG_FILE="$1"
TEMP=`mktemp /tmp/git-XXXXX`
BNAME=`git rev-parse --abbrev-ref HEAD`
TYPE=(${BNAME//\// })
TITLE=${TYPE[1]}
BTYPE="${TYPE[0]}"
BTICKET="${TITLE:0:9}"
TITLE2="${TITLE//-/ }"
BMSG="${TITLE2:10}"

(echo "$BTYPE ($BTICKET) $BMSG"; cat "$ORIG_MSG_FILE") > "$TEMP"
cat "$TEMP" > "$ORIG_MSG_FILE"