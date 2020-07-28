// Question 1:
// Make an Ethereum based Report card Submission Smart Contract and deploy it on Ropsten network
// Input - Name, RollNO, Batch, Marks of 4 Subjects and Status(Pass or Fail)
// Host it on Ropsten Network with Test

//TEST DEPOLYMENT OF THE SMART CONTRACT CAN BE FOUND @ 0x4D0fbB3f6B1D656749AEefb9528907D2925a4C0c IN https://ropsten.etherscan.io/address/0x4d0fbb3f6b1d656749aeefb9528907d2925a4c0c

pragma solidity ^0.4.17 < 0.6.12; 

contract reportcard{
    
    string public name;
    uint private rrn;
    string public batch;
    uint private maths;
    uint private python;
    uint private BC;
    uint private JS;
    uint private per;
    string private status;
    
    //constructor
    
    function reportcard(string Student_Name,uint Rollno,string Batch,uint Math_Mark,uint Python_Mark,uint Blockchain_Mark,uint Javascript_Mark)public{
        name = Student_Name;
        rrn = Rollno;
        batch = Batch;
        maths = Math_Mark;
        python = Python_Mark;
        BC = Blockchain_Mark;
        JS = Javascript_Mark;
        uint sum=maths+python+BC+JS;
        per=sum/4;
        if(per>=40){
            status="Pass";
        }
        else{
            status="Fail";
        }
        }
    
    function getdetail()public view returns(string Student_Name,uint Rollno,string Batch,uint Math_Mark,uint Python_Mark,uint Blockchain_Mark,uint Javascript_Mark,uint Percentage,string Status){
        return(name,rrn,batch,maths,python,BC,JS,per,status);
    }
}
