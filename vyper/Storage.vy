# @version 0.3.7
# license GPL
# https://github.com/MixinNetwork/trusted-group/blob/master/mvm/quorum/registry/contracts/Storage.sol

interface Storage:
    def read(_key: uint256) -> bytes: view
    def write(_key: uint256, raw: bytes)
