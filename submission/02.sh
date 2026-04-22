# How many new outputs were created by block 243,825?

BLCK_NUMBER=243825

BLCK_HASH=$(bitcoin-cli -signet getblockhash $BLCK_NUMBER)

bitcoin-cli -signet getblock 0000000e120ff9801366e9c75f1fbe6b72cc6a577bf16a402fd1521c3653f24d 2 | jq '[.tx[].vout | length] | add'
