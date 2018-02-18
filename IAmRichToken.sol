pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract IAmRichToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function IAmRichToken(address _owner)  UpgradeableToken(_owner) {
    name = "IAmRichToken";
    symbol = "RICH";
    totalSupply = 1000000;
    decimals = 3;

    balances[_owner] = totalSupply;
  }
}