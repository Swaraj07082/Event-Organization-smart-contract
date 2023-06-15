// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0 ;

contract Registry{



constructor(){
    administrator = msg.sender;
}

mapping (string=>uint) private  rollnos;
mapping (string=>uint) private  regnos;
mapping (string=>uint) private  classnos;


string student;
address private  administrator;


function enroll(string memory name) public payable{
    require(msg.value == 1 ether);
    student = name;

}

function FillDetails(uint rollno , uint regno , uint classno) public {
    require(msg.sender == administrator);
     rollnos[student] = rollno;
       regnos[student] = regno;
          classnos[student] = classno;
}

function ViewStudentRollno(string memory name) public view returns (uint) {

    return rollnos[name];  
}

function ViewStudentRegno(string memory name) public view returns (uint) {

    return regnos[name]; 
}

function ViewStudentClassno(string memory name) public view returns (uint) {

    return classnos[name];  
}


}
