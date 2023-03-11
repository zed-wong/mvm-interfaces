# @version 0.3.7
# license GPL-3.0
# https://github.com/MixinNetwork/trusted-group/blob/master/mvm/quorum/registry/contracts/Asset.sol

interface Asset:
    def transferWithExtra(_to: address, _value: uint256, _extra: bytes) -> bool: nonpayable
    def transfer(_to: address, _value: uint256) -> bool : nonpayable
    def transferFrom(_from: address, _to: address, _value: uint256) -> bool : nonpayable
    def mint(_to: address, _value: uint256) : nonpayable
    def burn(_to: address, _value: uint256) : nonpayable
    def balanceOf(_who: address) -> uint256: view
    def allowance(_owner: address, _spender: address) -> uint256: view
    def approve(_spender: address, _value: uint256) -> bool: nonpayable
