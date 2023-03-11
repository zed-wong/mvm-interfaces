# @version 0.3.7
# license GPL
# https://github.com/MixinNetwork/trusted-group/blob/master/mvm/quorum/registry/contracts/Registry.sol

interface Registry:
    def iterate(raw: bytes[256])
    def halt(raw: bytes[64])
    def claim(asset: address, amount: uint256) -> bool
    def burn(user: address, amount: uint256, extra: bytes) -> bool
    def mixin(raw: bytes[1024]) -> bool 

