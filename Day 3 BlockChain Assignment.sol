pragma solidity ^0.4.17 < 0.6.12; 

contract Land{
    
    string public owner;
    
    function Land(string newOwner) public{
        
        owner = newOwner;
        
    }
    
    function setLandNewDetails(string newOwner) public{
        
        owner = newOwner;
        
    }
    
    function getLandCurrentDetails() public view returns(string){
        return(owner);
    }
    
    
}

