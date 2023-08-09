// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0 ;
import "@openzeppelin/contracts/utils/Strings.sol";

contract Event_Org{
address manager;
    constructor(){
 manager = msg.sender;        
    }

    struct Event{
string name;
uint date;
uint price;

    }
uint id;
   mapping (uint=>Event) noname;

function CreateEvent(string memory name , uint date , uint price) public {
require(manager == msg.sender);
noname[id] = Event(name , date ,price);
id++;

}

function Checkevent(uint id_) public view returns (string memory , uint){

return( noname[id_].name , noname[id_].price);

}

function BuyTicket(uint id , uint cash) public view returns (string memory) {
// require(noname[id].price == cash, "ticket price is" , noname[id].price);
if(cash < noname[id].price || cash > noname[id].price){
    return string.concat("Ticket price is ",Strings.toString(noname[id].price));
}


}
}

