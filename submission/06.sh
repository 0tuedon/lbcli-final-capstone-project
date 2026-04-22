# Only one tx in block 243,821 signals opt-in RBF. What is its txid?

BLCK_NUMBER=243821
BLCK_HASH=$(bitcoin-cli -signet getblockhash $BLCK_NUMBER )

bitcoin-cli -signet getblock $BLCK_HASH  2 | jq -r '.tx[] | select(any(.vin[]; .sequence > 1 and .sequence < 4294967294)) | .txid'
# bitcoin-cli -signet getblock $BLCK_HASH | jq '.tx | .[]'
