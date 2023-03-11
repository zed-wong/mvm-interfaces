# @version 0.3.7
# license GPL
# https://github.com/MixinNetwork/trusted-group/blob/master/mvm/quorum/registry/contracts/Asset.sol

interface Asset:
    def transferWithExtra(to: address, value: uint256, extra: bytes)
    def transfer(to: address, value: uint256) -> bool
    def transferFrom(from: address, to: address, value: uint256) -> bool
    def mint(to: address, value: uint256)
    def burn(to: address, value: uint256)
