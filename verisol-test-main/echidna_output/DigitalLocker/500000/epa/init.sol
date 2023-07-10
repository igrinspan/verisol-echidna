pragma solidity >=0.4.25 <0.9.0;

contract DigitalLocker {
	modifier hasInitialized {
		require(has_initialized); 
		_; 
	}

	modifier hasNotInitialized {
		require(!has_initialized); 
		_; 
	}

	bool has_initialized = false;

	function vc0x0x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		assert(!(true && true && true && true && true && true && true && true && true && true));
	}
    enum StateType { Requested, DocumentReview, AvailableToShare, SharingRequestPending, SharingWithThirdParty, Terminated }
    address public Owner;
    address public BankAgent;
    string public LockerFriendlyName;
    string public LockerIdentifier;
    address public CurrentAuthorizedUser;
    string public ExpirationDate;
    string public Image;
    address public ThirdPartyRequestor;
    string public IntendedPurpose;
    string public LockerStatus;
    string public RejectionReason;
    StateType public State;

    function my_constructor(string memory lockerFriendlyName, address bankAgent) hasNotInitialized public
    {
        Owner = msg.sender;
        LockerFriendlyName = lockerFriendlyName;

        State = StateType.DocumentReview; //////////////// should be StateType.Requested?

        BankAgent = bankAgent;
				has_initialized = true;
    }

}