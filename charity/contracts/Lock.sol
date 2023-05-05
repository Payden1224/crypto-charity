// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Charity {
  address payable public beneficiary;

  constructor(address payable _beneficiary) {
    beneficiary = _beneficiary;
  }

  function donate() payable public {
    beneficiary.transfer(msg.value);
  }
}


