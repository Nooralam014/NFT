pragma solidity ^0.5.0;
import "openzeppelin-solidity/contracts/token/ERC721/ERC721Full.sol";
import "openzeppelin-solidity/contracts/token/ERC721/ERC721MetadataMintable.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";
contract testF is ERC721Full, ERC721MetadataMintable, Ownable {
mapping (uint256=>bool) public test;
  constructor() ERC721Full("TESTING", "NFT") public {
  }
 
  function transferNFT(address sendTo,uint256 tokenId) onlyMinter public {
    require(test[tokenId] == false, "can't transfer already transfered");
    ERC721Full(address(this)).transferFrom(msg.sender, sendTo, tokenId);
    test[tokenId] = true;
  }
}
