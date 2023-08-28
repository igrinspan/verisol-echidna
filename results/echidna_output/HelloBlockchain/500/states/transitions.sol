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
		require(State == StateType.Request);
		SendRequest(requestMessage);
		assert(!(State == StateType.Request&& true));
	}
	function vc0x0x1(string memory requestMessage, string memory responseMessage) hasInitialized payable public {
		require(State == StateType.Request);
		SendResponse(responseMessage);
		assert(!(State == StateType.Request&& true));
	}
	function vc0x1x0(string memory requestMessage, string memory responseMessage) hasInitialized payable public {
		require(State == StateType.Request);
		SendRequest(requestMessage);
		assert(!(State == StateType.Respond&& true));
	}
	function vc0x1x1(string memory requestMessage, string memory responseMessage) hasInitialized payable public {
		require(State == StateType.Request);
		SendResponse(responseMessage);
		assert(!(State == StateType.Respond&& true));
	}
	function vc1x0x0(string memory requestMessage, string memory responseMessage) hasInitialized payable public {
		require(State == StateType.Respond);
		SendRequest(requestMessage);
		assert(!(State == StateType.Request&& true));
	}
	function vc1x0x1(string memory requestMessage, string memory responseMessage) hasInitialized payable public {
		require(State == StateType.Respond);
		SendResponse(responseMessage);
		assert(!(State == StateType.Request&& true));
	}
	function vc1x1x0(string memory requestMessage, string memory responseMessage) hasInitialized payable public {
		require(State == StateType.Respond);
		SendRequest(requestMessage);
		assert(!(State == StateType.Respond&& true));
	}
	function vc1x1x1(string memory requestMessage, string memory responseMessage) hasInitialized payable public {
		require(State == StateType.Respond);
		SendResponse(responseMessage);
		assert(!(State == StateType.Respond&& true));
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