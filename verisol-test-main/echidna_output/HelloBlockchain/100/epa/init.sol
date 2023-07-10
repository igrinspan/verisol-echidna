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

	function vc0x0x0(string memory requestMessage, string memory responseMessage) hasInitialized payable public {
		assert(!(true && true));
	}
     //Set of States
    enum StateType { Request, Respond}

    //List of properties
    StateType public  State;
    address public  Requestor;
    address public  Responder;

    string public RequestMessage;
    string public ResponseMessage;

    // constructor function
    function my_constructor(string memory message) hasNotInitialized public
    {
        Requestor = msg.sender;
        RequestMessage = message;
        State = StateType.Request;
				has_initialized = true;
    }

}