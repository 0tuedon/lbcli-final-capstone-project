# Which tx in block 216,351 spends the coinbase output of block 216,128?
PARENT_BLCK_NUMBER=216128
PARENT_BLCK_HASH=$(bitcoin-cli -signet getblockhash $PARENT_BLCK_NUMBER)
COINBASE_TX=$(bitcoin-cli -signet getblock $PARENT_BLCK_HASH 2 | jq -r ".tx | .[0] | .txid")
CHILD_BLCK_NUMBER=216351
CHILD_BLCK_HASH=$(bitcoin-cli -signet getblockhash $CHILD_BLCK_NUMBER)

bitcoin-cli -signet getblock $CHILD_BLCK_HASH 2 | jq -r --arg id "$COINBASE_TX" '.tx[] | select(any(.vin[]; .txid == $id)) | .txid'




