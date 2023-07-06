// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.18;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNft is ERC721 {
    uint private s_tokenCounter;

    mapping(uint256 => string) private s_tokenIdToUri;

    constructor() ERC721("Doggie", "DOG") {}

    function mintNft(string memory tokenUri) public {
        s_tokenIdToUri[s_tokenCounter] = tokenUri;
        _safeMint(msg.sender, s_tokenCounter);
        s_tokenCounter++;
    }

    function tokenURI(
        uint tokenId
    ) public view override returns (string memory) {
        return s_tokenIdToUri[tokenId];
    }
}

//  "ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4/?filename=0-PUG.json";