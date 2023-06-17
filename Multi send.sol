// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0 ;

contract MultiSend{


uint count=0;



function EthereumAddress(address payable name , address payable  adr ) public pure {

name = payable (adr);

}

function ClicktoPay1ether(address payable name ) public {
name.transfer(1 ether);
count = count+1;
}

function EthersPaid() public view returns (uint){
return count;
}

}