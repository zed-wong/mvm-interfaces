# @version 0.3.7
# license GPL
# https://github.com/MixinNetwork/trusted-group/blob/master/mvm/quorum/registry/contracts/Asset.sol

interface IERC20:
    def balanceOf(who: address) -> uint256: nonpayable
    def transfer(to: address, value: uint256) -> bool: nonpayable
    def allowance(owner: address, spender: address) -> uint256: nonpayable
    def transferFrom(from: address, to: address, value: uint256) -> bool: nonpayable
    def approve(spender: address, value: uint256) -> bool: nonpayable

interface IRegistry:
    def burn(to: address, value: uint256, extra: bytes): nonpayable

interface StandardToken:
    def balanceOf(_owner: address) -> uint256: nonpayable
    def _transfer(_from: address, _to: address, _value: uint256): nonpayable
    def _transferFrom(_from: address, _to: address, _value: uint256): nonpayable
    def approve(_spender: address, _value: uint256) -> bool: nonpayable
    def allowance(_owner: address, _spender: address) -> uint256: nonpayable

interface Asset:
    def transferWithExtra(to: address, value: uint256, extra: bytes): nonpayable
    def transfer(to: address, value: uint256) -> bool: nonpayable
    def transferFrom(from: address, to: address, value: uint256) -> bool: nonpayable
    def mint(to: address, value: uint256): nonpayable
    def burn(to: address, value: uint256): nonpayable
