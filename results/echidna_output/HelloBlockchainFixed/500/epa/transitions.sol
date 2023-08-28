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

	function vc1x0x0(uint requestMessage, uint responseMessage) hasInitialized payable public {
		require(State == StateType.Respond && !(State == StateType.Request));
		require(msg.sender == Requestor);
		SendRequest(requestMessage);
		assert(!(!(State == StateType.Respond) && !(State == StateType.Request)&& true));
	}
	function vc1x1x0(uint requestMessage, uint responseMessage) hasInitialized payable public {
		require(State == StateType.Respond && !(State == StateType.Request));
		require(msg.sender == Requestor);
		SendRequest(requestMessage);
		assert(!(State == StateType.Respond && !(State == StateType.Request)&& true));
	}
	function vc1x2x0(uint requestMessage, uint responseMessage) hasInitialized payable public {
		require(State == StateType.Respond && !(State == StateType.Request));
		require(msg.sender == Requestor);
		SendRequest(requestMessage);
		assert(!(!(State == StateType.Respond) && State == StateType.Request&& true));
	}
	function vc1x3x0(uint requestMessage, uint responseMessage) hasInitialized payable public {
		require(State == StateType.Respond && !(State == StateType.Request));
		require(msg.sender == Requestor);
		SendRequest(requestMessage);
		assert(!(State == StateType.Respond && State == StateType.Request&& true));
	}
	function vc2x0x1(uint requestMessage, uint responseMessage) hasInitialized payable public {
		require(!(State == StateType.Respond) && State == StateType.Request);
		SendResponse(responseMessage);
		assert(!(!(State == StateType.Respond) && !(State == StateType.Request)&& true));
	}
	function vc2x1x1(uint requestMessage, uint responseMessage) hasInitialized payable public {
		require(!(State == StateType.Respond) && State == StateType.Request);
		SendResponse(responseMessage);
		assert(!(State == StateType.Respond && !(State == StateType.Request)&& true));
	}
	function vc2x2x1(uint requestMessage, uint responseMessage) hasInitialized payable public {
		require(!(State == StateType.Respond) && State == StateType.Request);
		SendResponse(responseMessage);
		assert(!(!(State == StateType.Respond) && State == StateType.Request&& true));
	}
	function vc2x3x1(uint requestMessage, uint responseMessage) hasInitialized payable public {
		require(!(State == StateType.Respond) && State == StateType.Request);
		SendResponse(responseMessage);
		assert(!(State == StateType.Respond && State == StateType.Request&& true));
	}
	function vc3x0x0(uint requestMessage, uint responseMessage) hasInitialized payable public {
		require(State == StateType.Respond && State == StateType.Request);
		require(msg.sender == Requestor);
		SendRequest(requestMessage);
		assert(!(!(State == StateType.Respond) && !(State == StateType.Request)&& true));
	}
	function vc3x0x1(uint requestMessage, uint responseMessage) hasInitialized payable public {
		require(State == StateType.Respond && State == StateType.Request);
		SendResponse(responseMessage);
		assert(!(!(State == StateType.Respond) && !(State == StateType.Request)&& true));
	}
	function vc3x1x0(uint requestMessage, uint responseMessage) hasInitialized payable public {
		require(State == StateType.Respond && State == StateType.Request);
		require(msg.sender == Requestor);
		SendRequest(requestMessage);
		assert(!(State == StateType.Respond && !(State == StateType.Request)&& true));
	}
	function vc3x1x1(uint requestMessage, uint responseMessage) hasInitialized payable public {
		require(State == StateType.Respond && State == StateType.Request);
		SendResponse(responseMessage);
		assert(!(State == StateType.Respond && !(State == StateType.Request)&& true));
	}
	function vc3x2x0(uint requestMessage, uint responseMessage) hasInitialized payable public {
		require(State == StateType.Respond && State == StateType.Request);
		require(msg.sender == Requestor);
		SendRequest(requestMessage);
		assert(!(!(State == StateType.Respond) && State == StateType.Request&& true));
	}
	function vc3x2x1(uint requestMessage, uint responseMessage) hasInitialized payable public {
		require(State == StateType.Respond && State == StateType.Request);
		SendResponse(responseMessage);
		assert(!(!(State == StateType.Respond) && State == StateType.Request&& true));
	}
	function vc3x3x0(uint requestMessage, uint responseMessage) hasInitialized payable public {
		require(State == StateType.Respond && State == StateType.Request);
		require(msg.sender == Requestor);
		SendRequest(requestMessage);
		assert(!(State == StateType.Respond && State == StateType.Request&& true));
	}
	function vc3x3x1(uint requestMessage, uint responseMessage) hasInitialized payable public {
		require(State == StateType.Respond && State == StateType.Request);
		SendResponse(responseMessage);
		assert(!(State == StateType.Respond && State == StateType.Request&& true));
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

    // call this function to send a request
    function SendRequest(uint requestMessageCode) hasInitialized public
    {
        if (Requestor != msg.sender)
        {
            revert();
        }

        // FIX: Add precondition
        if (State != StateType.Respond)
        {
            revert();
        }

        RequestMessageCode = requestMessageCode;
        State = StateType.Request;
    }

    // call this function to send a response
    function SendResponse(uint responseMessageCode) hasInitialized public
    {
        // FIX: Add precondition
        if (State != StateType.Request)
        {
            revert();
        }

       //Verification.Assert(State == StateType.Request);

        Responder = msg.sender;

        // call ContractUpdated() to record this action
        ResponseMessageCode = responseMessageCode;
        State = StateType.Respond;

       //Verification.Assert(State == StateType.Respond);
    }
}