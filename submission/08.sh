# what block height was this tx mined ?
MINED_TX=49990a9c8e60c8cba979ece134124695ffb270a98ba39c9824e42c4dc227c7eb

BLCK_HASH=$(bitcoin-cli -signet getrawtransaction $MINED_TX true | jq -r '.blockhash')

bitcoin-cli -signet getblock $BLCK_HASH | jq -r '.height'
