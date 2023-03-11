# @version 0.3.7
# license GPL-3.0
# https://github.com/MixinNetwork/trusted-group/blob/master/mvm/quorum/registry/contracts/Asset.sol

interface Asset:
    def transferWithExtra(_to: address, _value: uint256, _extra: bytes)
    def transfer(_to: address, _value: uint256) -> bool
    def transferFrom(_from: address, _to: address, _value: uint256) -> bool
    def mint(_to: address, _value: uint256)
    def burn(_to: address, _value: uint256)
