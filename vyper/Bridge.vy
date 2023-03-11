# @version 0.3.7
# license GPL
# https://github.com/MixinNetwork/trusted-group/blob/master/mvm/quorum/bridge/contracts/Bridge.sol

interface Bridge:
    def release(receiver: address, input: bytes32) -> bool: payable
    def vault(asset: address, amount: uint256) -> bool: nonpayable
    def bind(receiver: address) -> bool: nonpayable
    def pass(asset: address, amount: uint256) -> bool: nonpayable
    def passXIN(receiver: address, amount: uint256) -> bool: nonpayable
    def canonical(asset: address) -> address: view
