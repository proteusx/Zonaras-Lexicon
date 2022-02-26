#!/bin/bash

TLG_CDROM=/usr/local/proteus/CDROMS/tlg/
ZONARAS_TLG_ID="-a 3136 -b 001"

TLG2U_PROG=/usr/local/bin/tlg2u
PARAMS="-d $TLG_CDROM -c tlg -B 0 -T 89 -M 0 $ZONARAS_TLG_ID"

$TLG2U_PROG $PARAMS > tmp.utf
sed -i 's/\ *$//' tmp.utf         # Remove trailling spaces

./zonaras.pl tmp.utf > ./zonaras-body

# The header includes the UTF-8 BOM
# Without BOM GoldenDict will not see the file
cat ./zonaras-header ./zonaras-body > ./dictionary/zonaras.dsl
rm ./zonaras-body ./tmp.utf
