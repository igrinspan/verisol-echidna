pragma solidity >=0.4.25 <0.9.0;

contract HelloBlockchain {
	modifier hasInitialized {
		require(has_initialized); 
		_; 
	}

	modifier hasNotInitialized {
		require(!has_initialized); 
		_; 
	}

	bool has_initialized = false;

	function vc0x0x0(uint requestMessage, uint responseMessage) hasInitialized payable public {
		assert(!(State == StateType.Request));
	}
	function vc1x0x0(uint requestMessage, uint responseMessage) hasInitialized payable public {
		assert(!(State == StateType.Respond));
	}
     //Set of States
    enum StateType { Request, Respond}

    //List of properties
    StateType State;
    address Requestor;
    address Responder;

    uint RequestMessageCode;
    uint ResponseMessageCode;

    // constructor function
    function my_constructor(uint messageCode) hasNotInitialized public
    {
        Requestor = msg.sender;
        RequestMessageCode = messageCode;
        State = StateType.Request;
				has_initialized = true;
    }

}