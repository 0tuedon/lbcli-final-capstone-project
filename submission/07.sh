# what is the coinbase tx in this block 243,834

BLCK_NUMBER=243834

BLCK_HASH=$(bitcoin-cli -signet getblockhash $BLCK_NUMBER)

bitcoin-cli -signet getblock $BLCK_HASH | jq -r '.tx | .[0]' 
