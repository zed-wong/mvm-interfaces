# @version 0.3.7
# license GPL
# https://github.com/MixinNetwork/trusted-group/blob/master/mvm/quorum/registry/contracts/Factory.sol

interface Asset:
    def transferWithExtra(to: address, value: uint256, extra: bytes): nonpayable
    def transfer(to: address, value: uint256) -> bool: nonpayable
    def transferFrom(from: address, to: address, value: uint256) -> bool: nonpayable
    def mint(to: address, value: uint256): nonpayable
    def burn(to: address, value: uint256): nonpayable

interface User:
    def create(
        globalIndex: uint256,
        myIndex: uint256,
        members: bytes,
        token: address,
        symbol: String[8],
        name: String[64]
    ) -> None: nonpayable


interface Factory:
    def getUserContractCode(members: bytes) -> bytes: nonpayable
    def getAssetContractCode(id: uint256, symbol: String[8], name: String[64]) -> bytes: nonpayable
    def getContractAddress(code: bytes) -> address: nonpayable
    def deploy(bytecode: bytes, _salt: uint256) -> address: nonpayable
    def getOrCreateAssetContract(id: uint256, symbol: String[8], name: String[64]) -> address: nonpayable
    def getOrCreateUserContract(members: bytes) -> address: nonpayable
    def getUserContractCode(members: bytes) -> bytes: nonpayable
    def getAssetContractCode(id: uint256, symbol: String[8], name: String[64]) -> bytes: nonpayable
    def getContractAddress(code: bytes) -> address: nonpayable
    def deploy(bytecode: bytes, _salt: uint256) -> address: nonpayable
    def getOrCreateAssetContract(id: uint128, symbol: String[8], name: String[64]) -> address: nonpayable
    def getOrCreateUserContract(members: bytes) -> address: nonpayable


