// ItGold.io Contracts (v1.0.0)

pragma ton-solidity = 0.58.1;

pragma AbiHeader expire;
pragma AbiHeader time;
pragma AbiHeader pubkey;


import '@itgold/everscale-tip/contracts/TIP4_1/TIP4_1Nft.sol';
import '@itgold/everscale-tip/contracts/TIP4_2/TIP4_2Nft.sol';

contract Nft is TIP4_1Nft, TIP4_2Nft {

    // owner soul address
    address public _ownerSoul;

    constructor(
        address owner,
        address sendGasTo,
        uint128 remainOnNft,
        string json,
        address ownerSoul
    ) TIP4_1Nft(
        owner,
        sendGasTo,
        remainOnNft
    ) TIP4_2Nft (
        json
    ) public {
        tvm.accept();
        _ownerSoul = ownerSoul;
    }
}
