all    :  export DAPP_SOLC_VERSION=0.5.16
all    :; dapp build
clean  :; dapp clean
test   :; dapp test
deploy :; dapp create Reentrant
