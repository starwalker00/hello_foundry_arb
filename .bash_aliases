function deploy {
    forge script script/Counter.s.sol:DeployCounterScript --rpc-url $ARBITRUM_RPC_URL --broadcast -vvvv
}

function transact1 {
    forge script script/Counter.s.sol:Transact1CounterScript --rpc-url $ARBITRUM_RPC_URL --broadcast -vvvv
}

function transactn {
    forge script script/Counter.s.sol:TransactnCounterScript --rpc-url $ARBITRUM_RPC_URL --broadcast -vvvv
}