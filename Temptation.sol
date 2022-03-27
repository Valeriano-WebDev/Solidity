pragma solidity >=0.7.0 <0.9.0;

contract TemptationToken {
    address public minter;
    mapping (address => uint) public balances;


    constructor() {
        minter = msg.sender;
    }

    function mint(address receiver, uint amount) public {
        require(msg.sender == minter);
        balances[receiver] += amount;
    }
}