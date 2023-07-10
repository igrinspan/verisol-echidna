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

	function vc0x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && !(State == StateType.DocumentReview) && !(State == StateType.AvailableToShare) && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && !(State == StateType.AvailableToShare) && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc1x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && !(State == StateType.DocumentReview) && !(State == StateType.AvailableToShare) && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && !(State == StateType.AvailableToShare) && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc2x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && State == StateType.DocumentReview && !(State == StateType.AvailableToShare) && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && !(State == StateType.AvailableToShare) && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc3x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && !(State == StateType.DocumentReview) && !(State == StateType.AvailableToShare) && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && !(State == StateType.AvailableToShare) && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc4x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && State == StateType.DocumentReview && !(State == StateType.AvailableToShare) && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && !(State == StateType.AvailableToShare) && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc5x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && !(State == StateType.DocumentReview) && !(State == StateType.AvailableToShare) && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && !(State == StateType.AvailableToShare) && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc6x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && State == StateType.DocumentReview && !(State == StateType.AvailableToShare) && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && !(State == StateType.AvailableToShare) && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc7x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && !(State == StateType.DocumentReview) && State == StateType.AvailableToShare && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && State == StateType.AvailableToShare && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc8x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && !(State == StateType.DocumentReview) && !(State == StateType.AvailableToShare) && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && !(State == StateType.AvailableToShare) && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc9x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && !(State == StateType.DocumentReview) && !(State == StateType.AvailableToShare) && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && !(State == StateType.AvailableToShare) && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc10x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && State == StateType.DocumentReview && !(State == StateType.AvailableToShare) && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && !(State == StateType.AvailableToShare) && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc11x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && !(State == StateType.DocumentReview) && State == StateType.AvailableToShare && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && State == StateType.AvailableToShare && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc12x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && !(State == StateType.DocumentReview) && !(State == StateType.AvailableToShare) && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && !(State == StateType.AvailableToShare) && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc13x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && !(State == StateType.DocumentReview) && !(State == StateType.AvailableToShare) && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && !(State == StateType.AvailableToShare) && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc14x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && State == StateType.DocumentReview && State == StateType.AvailableToShare && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && State == StateType.AvailableToShare && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc15x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && State == StateType.DocumentReview && !(State == StateType.AvailableToShare) && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && !(State == StateType.AvailableToShare) && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc16x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && State == StateType.DocumentReview && !(State == StateType.AvailableToShare) && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && !(State == StateType.AvailableToShare) && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc17x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && !(State == StateType.DocumentReview) && State == StateType.AvailableToShare && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && State == StateType.AvailableToShare && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc18x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && !(State == StateType.DocumentReview) && !(State == StateType.AvailableToShare) && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && !(State == StateType.AvailableToShare) && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc19x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && !(State == StateType.DocumentReview) && !(State == StateType.AvailableToShare) && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && !(State == StateType.AvailableToShare) && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc20x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && State == StateType.DocumentReview && State == StateType.AvailableToShare && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && State == StateType.AvailableToShare && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc21x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && State == StateType.DocumentReview && !(State == StateType.AvailableToShare) && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && !(State == StateType.AvailableToShare) && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc22x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && State == StateType.DocumentReview && !(State == StateType.AvailableToShare) && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && !(State == StateType.AvailableToShare) && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc23x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && !(State == StateType.DocumentReview) && State == StateType.AvailableToShare && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && State == StateType.AvailableToShare && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc24x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && !(State == StateType.DocumentReview) && !(State == StateType.AvailableToShare) && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && !(State == StateType.AvailableToShare) && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc25x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && !(State == StateType.DocumentReview) && !(State == StateType.AvailableToShare) && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && !(State == StateType.AvailableToShare) && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc26x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && State == StateType.DocumentReview && State == StateType.AvailableToShare && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && State == StateType.AvailableToShare && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc27x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && State == StateType.DocumentReview && !(State == StateType.AvailableToShare) && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && !(State == StateType.AvailableToShare) && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc28x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && State == StateType.DocumentReview && !(State == StateType.AvailableToShare) && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && !(State == StateType.AvailableToShare) && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc29x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && !(State == StateType.DocumentReview) && State == StateType.AvailableToShare && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && State == StateType.AvailableToShare && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc30x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && !(State == StateType.DocumentReview) && State == StateType.AvailableToShare && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && State == StateType.AvailableToShare && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc31x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && !(State == StateType.DocumentReview) && !(State == StateType.AvailableToShare) && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && !(State == StateType.AvailableToShare) && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc32x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && State == StateType.DocumentReview && State == StateType.AvailableToShare && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && State == StateType.AvailableToShare && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc33x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && State == StateType.DocumentReview && !(State == StateType.AvailableToShare) && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && !(State == StateType.AvailableToShare) && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc34x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && State == StateType.DocumentReview && !(State == StateType.AvailableToShare) && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && !(State == StateType.AvailableToShare) && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc35x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && !(State == StateType.DocumentReview) && State == StateType.AvailableToShare && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && State == StateType.AvailableToShare && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc36x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && !(State == StateType.DocumentReview) && State == StateType.AvailableToShare && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && State == StateType.AvailableToShare && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc37x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && !(State == StateType.DocumentReview) && !(State == StateType.AvailableToShare) && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && !(State == StateType.AvailableToShare) && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc38x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && State == StateType.DocumentReview && State == StateType.AvailableToShare && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && State == StateType.AvailableToShare && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc39x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && State == StateType.DocumentReview && State == StateType.AvailableToShare && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && State == StateType.AvailableToShare && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc40x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && State == StateType.DocumentReview && !(State == StateType.AvailableToShare) && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && !(State == StateType.AvailableToShare) && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc41x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && !(State == StateType.DocumentReview) && State == StateType.AvailableToShare && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && State == StateType.AvailableToShare && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc42x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && !(State == StateType.DocumentReview) && State == StateType.AvailableToShare && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && State == StateType.AvailableToShare && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc43x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && !(State == StateType.DocumentReview) && !(State == StateType.AvailableToShare) && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && !(State == StateType.AvailableToShare) && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc44x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && State == StateType.DocumentReview && State == StateType.AvailableToShare && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && State == StateType.AvailableToShare && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc45x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && State == StateType.DocumentReview && State == StateType.AvailableToShare && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && State == StateType.AvailableToShare && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc46x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && State == StateType.DocumentReview && !(State == StateType.AvailableToShare) && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && !(State == StateType.AvailableToShare) && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc47x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && !(State == StateType.DocumentReview) && State == StateType.AvailableToShare && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && State == StateType.AvailableToShare && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc48x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && !(State == StateType.DocumentReview) && State == StateType.AvailableToShare && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && State == StateType.AvailableToShare && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc49x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && !(State == StateType.DocumentReview) && !(State == StateType.AvailableToShare) && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && !(State == StateType.AvailableToShare) && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc50x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && State == StateType.DocumentReview && State == StateType.AvailableToShare && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && State == StateType.AvailableToShare && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc51x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && State == StateType.DocumentReview && State == StateType.AvailableToShare && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && State == StateType.AvailableToShare && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc52x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && State == StateType.DocumentReview && !(State == StateType.AvailableToShare) && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && !(State == StateType.AvailableToShare) && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc53x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && !(State == StateType.DocumentReview) && State == StateType.AvailableToShare && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && State == StateType.AvailableToShare && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc54x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && State == StateType.DocumentReview && State == StateType.AvailableToShare && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && State == StateType.AvailableToShare && !(State == StateType.SharingWithThirdParty) && !(State == StateType.SharingWithThirdParty) && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc55x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && State == StateType.DocumentReview && State == StateType.AvailableToShare && !(State == StateType.SharingRequestPending) && !(State == StateType.SharingRequestPending) && State == StateType.AvailableToShare && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc56x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && State == StateType.DocumentReview && !(State == StateType.AvailableToShare) && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && !(State == StateType.AvailableToShare) && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc57x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && !(State == StateType.DocumentReview) && State == StateType.AvailableToShare && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && State == StateType.AvailableToShare && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc58x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && State == StateType.DocumentReview && State == StateType.AvailableToShare && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && State == StateType.AvailableToShare && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc59x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && !(State == StateType.DocumentReview) && State == StateType.AvailableToShare && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && State == StateType.AvailableToShare && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc60x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && State == StateType.DocumentReview && State == StateType.AvailableToShare && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && State == StateType.AvailableToShare && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && !(State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated)));
	}
	function vc61x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && !(State == StateType.DocumentReview) && State == StateType.AvailableToShare && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && State == StateType.AvailableToShare && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc62x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(!(State == StateType.Requested) && true && State == StateType.DocumentReview && State == StateType.AvailableToShare && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && State == StateType.AvailableToShare && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
	function vc63x0x0(uint rejectionReason, uint lockerIdentifier, uint image, address thirdPartyRequestor, uint expirationDate) hasInitialized payable public {
		assert(!(State == StateType.Requested && true && State == StateType.DocumentReview && State == StateType.AvailableToShare && State == StateType.SharingRequestPending && State == StateType.SharingRequestPending && State == StateType.AvailableToShare && State == StateType.SharingWithThirdParty && State == StateType.SharingWithThirdParty && State != StateType.Requested && State != StateType.DocumentReview &&State != StateType.Terminated));
	}
    enum StateType { Requested, DocumentReview, AvailableToShare, SharingRequestPending, SharingWithThirdParty, Terminated }
    address Owner;
    address BankAgent;
    uint LockerIdentifier;
    address CurrentAuthorizedUser;
    uint ExpirationTimestamp;
    uint ImageCode;
    address ThirdPartyRequestor;
    bool HasIntendedPurpose;
    enum LockerStatusEnum {Pending, Rejected, Approved, Shared, Available}
    LockerStatusEnum LockerStatus;
    uint RejectionReasonCode;
    StateType State;

    function my_constructor(address bankAgent) hasNotInitialized public
    {
        Owner = msg.sender;

        State = StateType.Requested;

        BankAgent = bankAgent;
				has_initialized = true;
    }

}