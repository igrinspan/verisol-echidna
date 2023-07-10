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
		require(true && true && true && true && true && true && true && true && true && true);
		require(Owner != msg.sender);
		BeginReviewProcess();
		assert(!(true && true && true && true && true && true && true && true && true && true&& true));
	}
	function vc0x0x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(true && true && true && true && true && true && true && true && true && true);
		require(BankAgent == msg.sender);
		RejectApplication(rejectionReason);
		assert(!(true && true && true && true && true && true && true && true && true && true&& true));
	}
	function vc0x0x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(true && true && true && true && true && true && true && true && true && true);
		require(BankAgent == msg.sender);
		UploadDocuments( lockerIdentifier, image);
		assert(!(true && true && true && true && true && true && true && true && true && true&& true));
	}
	function vc0x0x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(true && true && true && true && true && true && true && true && true && true);
		require(Owner == msg.sender);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(true && true && true && true && true && true && true && true && true && true&& true));
	}
	function vc0x0x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(true && true && true && true && true && true && true && true && true && true);
		require(Owner == msg.sender);
		AcceptSharingRequest();
		assert(!(true && true && true && true && true && true && true && true && true && true&& true));
	}
	function vc0x0x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(true && true && true && true && true && true && true && true && true && true);
		require(Owner == msg.sender);
		RejectSharingRequest();
		assert(!(true && true && true && true && true && true && true && true && true && true&& true));
	}
	function vc0x0x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(true && true && true && true && true && true && true && true && true && true);
		require(Owner != msg.sender);
		RequestLockerAccess(intendedPurpose);
		assert(!(true && true && true && true && true && true && true && true && true && true&& true));
	}
	function vc0x0x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(true && true && true && true && true && true && true && true && true && true);
		require(CurrentAuthorizedUser == msg.sender);
		ReleaseLockerAccess();
		assert(!(true && true && true && true && true && true && true && true && true && true&& true));
	}
	function vc0x0x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(true && true && true && true && true && true && true && true && true && true);
		require(Owner == msg.sender);
		RevokeAccessFromThirdParty();
		assert(!(true && true && true && true && true && true && true && true && true && true&& true));
	}
	function vc0x0x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(true && true && true && true && true && true && true && true && true && true);
		require(Owner == msg.sender);
		Terminate();
		assert(!(true && true && true && true && true && true && true && true && true && true&& true));
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

    function BeginReviewProcess() hasInitialized public
    {
        /* Need to update, likely with registry to confirm sender is agent
        Also need to add a function to re-assign the agent.
        */
        if (Owner == msg.sender)
        {
            revert();
        }
        BankAgent = msg.sender;

        LockerStatus = "Pending";
        State = StateType.DocumentReview;
    }

    function RejectApplication(string memory rejectionReason) hasInitialized public
    {
        if (BankAgent != msg.sender)
        {
            revert();
        }

        RejectionReason = rejectionReason;
        LockerStatus = "Rejected";
        State = StateType.DocumentReview;
    }

    function UploadDocuments(string memory lockerIdentifier, string memory image) hasInitialized public
    {
        if (BankAgent != msg.sender)
        {
            revert();
        }
        LockerStatus = "Approved";
        Image = image;
        LockerIdentifier = lockerIdentifier;
        State = StateType.AvailableToShare;
    }

    function ShareWithThirdParty(address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized public
    {
        if (Owner != msg.sender)
        {
            revert();
        }

        ThirdPartyRequestor = thirdPartyRequestor;
        CurrentAuthorizedUser = ThirdPartyRequestor;

        LockerStatus = "Shared";
        IntendedPurpose = intendedPurpose;
        ExpirationDate = expirationDate;
        State = StateType.SharingWithThirdParty;
    }

    function AcceptSharingRequest() hasInitialized public
    {
        if (Owner != msg.sender)
        {
            revert();
        }

        CurrentAuthorizedUser = ThirdPartyRequestor;
        State = StateType.SharingWithThirdParty;
    }

    function RejectSharingRequest() hasInitialized public
    {
        if (Owner != msg.sender)
        {
            revert();
        }
        LockerStatus = "Available";
        CurrentAuthorizedUser = address(0x0000000000000000000000000000000000000000);
        State = StateType.AvailableToShare;
    }

    function RequestLockerAccess(string memory intendedPurpose) hasInitialized public
    {
        if (Owner == msg.sender)
        {
            revert();
        }

        ThirdPartyRequestor = msg.sender;
        IntendedPurpose = intendedPurpose;
        State = StateType.SharingRequestPending;
    }

    function ReleaseLockerAccess() hasInitialized public
    {

        if (CurrentAuthorizedUser != msg.sender)
        {
            revert();
        }
        LockerStatus = "Available";
        ThirdPartyRequestor = address(0x0000000000000000000000000000000000000000);
        CurrentAuthorizedUser = address(0x0000000000000000000000000000000000000000);
        IntendedPurpose = "";
        State = StateType.AvailableToShare;
    }
    
    function RevokeAccessFromThirdParty() hasInitialized public
    {
        if (Owner != msg.sender)
        {
            revert();
        }
        LockerStatus = "Available";
        CurrentAuthorizedUser = address(0x0000000000000000000000000000000000000000);
        State = StateType.AvailableToShare;
    }

    function Terminate() hasInitialized public
    {
        if (Owner != msg.sender)
        {
            revert();
        }
        CurrentAuthorizedUser = address(0x0000000000000000000000000000000000000000);
        State = StateType.Terminated;
    }
}