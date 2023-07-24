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

	function vca(string memory requestMessage, string memory responseMessage) hasInitialized payable public {
		require(true && true);
		require(msg.sender == Requestor);
		SendRequest(requestMessage);
		assert(!(true && true&& true));
	}
	function vcb(string memory requestMessage, string memory responseMessage) hasInitialized payable public {
		require(true && true);
		SendResponse(responseMessage);
		assert(!(true && true&& true));
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

    // call this function to send a request
    function SendRequest(string memory requestMessage) hasInitialized public
    {
        if (Requestor != msg.sender)
        {
            revert();
        }

        RequestMessage = requestMessage;
        State = StateType.Request;
    }

    // call this function to send a response
    function SendResponse(string memory responseMessage) hasInitialized public
    {
        Responder = msg.sender;

        // call ContractUpdated() to record this action
        ResponseMessage = responseMessage;
        State = StateType.Respond;
    }
}