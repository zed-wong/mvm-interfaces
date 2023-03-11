# @version 0.3.7
# license GPL
# https://github.com/MixinNetwork/trusted-group/blob/master/mvm/quorum/registry/contracts/Factory.sol

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
    def getUserContractCode(_members: bytes) -> bytes
    def getAssetContractCode(_id: uint256, _symbol: String[8], _name: String[64]) -> bytes
    def getContractAddress(_code: bytes) -> address
    def deploy(_bytecode: bytes, _salt: uint256) -> address
    def getOrCreateAssetContract(_id: uint128, _symbol: String[8], _name: String[64]) -> address
    def getOrCreateUserContract(_members: bytes) -> address
    def getUserContractCode(_members: bytes) -> bytes
    def getAssetContractCode(_id: uint256, _symbol: String[8], _name: String[64]) -> bytes
    def getContractAddress(_code: bytes) -> address
    def deploy(_bytecode: bytes, _salt: uint256) -> address
    def getOrCreateAssetContract(_id: uint128, _symbol: String[8], _name: String[64]) -> address
    def getOrCreateUserContract(_members: bytes) -> address
