# @version 0.3.7
# license GPL
# https://github.com/MixinNetwork/trusted-group/blob/master/mvm/quorum/registry/contracts/Registry.sol

interface Registry:
    def iterate(_raw: bytes[256])
    def halt(_raw: bytes[64])
    def claim(_asset: address, _amount: uint256) -> bool
    def burn(_user: address, _amount: uint256, _extra: bytes) -> bool
    def mixin(_raw: bytes[1024]) -> bool
