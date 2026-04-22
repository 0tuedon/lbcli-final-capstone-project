# How many new outputs were created by block 243,825?

BLCK_NUMBER=243825

BLCK_HASH=$(bitcoin-cli -signet getblockhash $BLCK_NUMBER)

bitcoin-cli -signet getblock $BLCK_HASH 2 | jq '[.tx[].vout | length] | add'
