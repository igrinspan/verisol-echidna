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
		require(State == StateType.Requested);
		BeginReviewProcess();
		assert(!(State == StateType.Requested&& true));
	}
	function vc0x0x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.Requested&& true));
	}
	function vc0x0x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.Requested&& true));
	}
	function vc0x0x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.Requested&& true));
	}
	function vc0x0x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		AcceptSharingRequest();
		assert(!(State == StateType.Requested&& true));
	}
	function vc0x0x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RejectSharingRequest();
		assert(!(State == StateType.Requested&& true));
	}
	function vc0x0x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.Requested&& true));
	}
	function vc0x0x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		ReleaseLockerAccess();
		assert(!(State == StateType.Requested&& true));
	}
	function vc0x0x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.Requested&& true));
	}
	function vc0x0x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		Terminate();
		assert(!(State == StateType.Requested&& true));
	}
	function vc0x1x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		BeginReviewProcess();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc0x1x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc0x1x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc0x1x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc0x1x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		AcceptSharingRequest();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc0x1x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RejectSharingRequest();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc0x1x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc0x1x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		ReleaseLockerAccess();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc0x1x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc0x1x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		Terminate();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc0x2x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		BeginReviewProcess();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc0x2x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc0x2x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc0x2x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc0x2x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		AcceptSharingRequest();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc0x2x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RejectSharingRequest();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc0x2x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc0x2x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		ReleaseLockerAccess();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc0x2x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc0x2x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		Terminate();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc0x3x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		BeginReviewProcess();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc0x3x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc0x3x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc0x3x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc0x3x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		AcceptSharingRequest();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc0x3x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RejectSharingRequest();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc0x3x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc0x3x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		ReleaseLockerAccess();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc0x3x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc0x3x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		Terminate();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc0x4x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		BeginReviewProcess();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc0x4x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc0x4x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc0x4x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc0x4x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		AcceptSharingRequest();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc0x4x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RejectSharingRequest();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc0x4x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc0x4x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		ReleaseLockerAccess();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc0x4x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc0x4x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		Terminate();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc0x5x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		BeginReviewProcess();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc0x5x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc0x5x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc0x5x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc0x5x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		AcceptSharingRequest();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc0x5x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RejectSharingRequest();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc0x5x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc0x5x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		ReleaseLockerAccess();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc0x5x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc0x5x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Requested);
		Terminate();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x0x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		BeginReviewProcess();
		assert(!(State == StateType.Requested&& true));
	}
	function vc1x0x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.Requested&& true));
	}
	function vc1x0x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.Requested&& true));
	}
	function vc1x0x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.Requested&& true));
	}
	function vc1x0x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		AcceptSharingRequest();
		assert(!(State == StateType.Requested&& true));
	}
	function vc1x0x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RejectSharingRequest();
		assert(!(State == StateType.Requested&& true));
	}
	function vc1x0x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.Requested&& true));
	}
	function vc1x0x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		ReleaseLockerAccess();
		assert(!(State == StateType.Requested&& true));
	}
	function vc1x0x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.Requested&& true));
	}
	function vc1x0x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		Terminate();
		assert(!(State == StateType.Requested&& true));
	}
	function vc1x1x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		BeginReviewProcess();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc1x1x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc1x1x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc1x1x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc1x1x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		AcceptSharingRequest();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc1x1x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RejectSharingRequest();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc1x1x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc1x1x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		ReleaseLockerAccess();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc1x1x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc1x1x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		Terminate();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc1x2x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		BeginReviewProcess();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc1x2x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc1x2x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc1x2x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc1x2x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		AcceptSharingRequest();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc1x2x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RejectSharingRequest();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc1x2x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc1x2x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		ReleaseLockerAccess();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc1x2x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc1x2x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		Terminate();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc1x3x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		BeginReviewProcess();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc1x3x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc1x3x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc1x3x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc1x3x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		AcceptSharingRequest();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc1x3x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RejectSharingRequest();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc1x3x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc1x3x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		ReleaseLockerAccess();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc1x3x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc1x3x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		Terminate();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc1x4x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		BeginReviewProcess();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc1x4x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc1x4x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc1x4x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc1x4x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		AcceptSharingRequest();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc1x4x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RejectSharingRequest();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc1x4x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc1x4x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		ReleaseLockerAccess();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc1x4x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc1x4x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		Terminate();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc1x5x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		BeginReviewProcess();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x5x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x5x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x5x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x5x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		AcceptSharingRequest();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x5x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RejectSharingRequest();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x5x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x5x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		ReleaseLockerAccess();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x5x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc1x5x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.DocumentReview);
		Terminate();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x0x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		BeginReviewProcess();
		assert(!(State == StateType.Requested&& true));
	}
	function vc2x0x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.Requested&& true));
	}
	function vc2x0x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.Requested&& true));
	}
	function vc2x0x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.Requested&& true));
	}
	function vc2x0x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		AcceptSharingRequest();
		assert(!(State == StateType.Requested&& true));
	}
	function vc2x0x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RejectSharingRequest();
		assert(!(State == StateType.Requested&& true));
	}
	function vc2x0x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.Requested&& true));
	}
	function vc2x0x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		ReleaseLockerAccess();
		assert(!(State == StateType.Requested&& true));
	}
	function vc2x0x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.Requested&& true));
	}
	function vc2x0x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		Terminate();
		assert(!(State == StateType.Requested&& true));
	}
	function vc2x1x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		BeginReviewProcess();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc2x1x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc2x1x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc2x1x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc2x1x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		AcceptSharingRequest();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc2x1x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RejectSharingRequest();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc2x1x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc2x1x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		ReleaseLockerAccess();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc2x1x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc2x1x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		Terminate();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc2x2x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		BeginReviewProcess();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc2x2x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc2x2x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc2x2x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc2x2x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		AcceptSharingRequest();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc2x2x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RejectSharingRequest();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc2x2x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc2x2x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		ReleaseLockerAccess();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc2x2x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc2x2x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		Terminate();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc2x3x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		BeginReviewProcess();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc2x3x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc2x3x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc2x3x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc2x3x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		AcceptSharingRequest();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc2x3x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RejectSharingRequest();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc2x3x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc2x3x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		ReleaseLockerAccess();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc2x3x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc2x3x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		Terminate();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc2x4x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		BeginReviewProcess();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc2x4x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc2x4x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc2x4x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc2x4x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		AcceptSharingRequest();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc2x4x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RejectSharingRequest();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc2x4x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc2x4x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		ReleaseLockerAccess();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc2x4x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc2x4x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		Terminate();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc2x5x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		BeginReviewProcess();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x5x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x5x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x5x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x5x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		AcceptSharingRequest();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x5x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RejectSharingRequest();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x5x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x5x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		ReleaseLockerAccess();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x5x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc2x5x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.AvailableToShare);
		Terminate();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x0x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		BeginReviewProcess();
		assert(!(State == StateType.Requested&& true));
	}
	function vc3x0x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.Requested&& true));
	}
	function vc3x0x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.Requested&& true));
	}
	function vc3x0x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.Requested&& true));
	}
	function vc3x0x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		AcceptSharingRequest();
		assert(!(State == StateType.Requested&& true));
	}
	function vc3x0x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RejectSharingRequest();
		assert(!(State == StateType.Requested&& true));
	}
	function vc3x0x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.Requested&& true));
	}
	function vc3x0x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		ReleaseLockerAccess();
		assert(!(State == StateType.Requested&& true));
	}
	function vc3x0x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.Requested&& true));
	}
	function vc3x0x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		Terminate();
		assert(!(State == StateType.Requested&& true));
	}
	function vc3x1x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		BeginReviewProcess();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc3x1x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc3x1x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc3x1x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc3x1x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		AcceptSharingRequest();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc3x1x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RejectSharingRequest();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc3x1x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc3x1x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		ReleaseLockerAccess();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc3x1x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc3x1x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		Terminate();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc3x2x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		BeginReviewProcess();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc3x2x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc3x2x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc3x2x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc3x2x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		AcceptSharingRequest();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc3x2x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RejectSharingRequest();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc3x2x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc3x2x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		ReleaseLockerAccess();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc3x2x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc3x2x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		Terminate();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc3x3x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		BeginReviewProcess();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc3x3x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc3x3x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc3x3x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc3x3x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		AcceptSharingRequest();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc3x3x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RejectSharingRequest();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc3x3x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc3x3x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		ReleaseLockerAccess();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc3x3x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc3x3x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		Terminate();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc3x4x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		BeginReviewProcess();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc3x4x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc3x4x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc3x4x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc3x4x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		AcceptSharingRequest();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc3x4x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RejectSharingRequest();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc3x4x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc3x4x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		ReleaseLockerAccess();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc3x4x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc3x4x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		Terminate();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc3x5x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		BeginReviewProcess();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x5x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x5x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x5x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x5x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		AcceptSharingRequest();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x5x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RejectSharingRequest();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x5x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x5x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		ReleaseLockerAccess();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x5x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc3x5x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingRequestPending);
		Terminate();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x0x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		BeginReviewProcess();
		assert(!(State == StateType.Requested&& true));
	}
	function vc4x0x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.Requested&& true));
	}
	function vc4x0x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.Requested&& true));
	}
	function vc4x0x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.Requested&& true));
	}
	function vc4x0x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		AcceptSharingRequest();
		assert(!(State == StateType.Requested&& true));
	}
	function vc4x0x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RejectSharingRequest();
		assert(!(State == StateType.Requested&& true));
	}
	function vc4x0x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.Requested&& true));
	}
	function vc4x0x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		ReleaseLockerAccess();
		assert(!(State == StateType.Requested&& true));
	}
	function vc4x0x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.Requested&& true));
	}
	function vc4x0x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		Terminate();
		assert(!(State == StateType.Requested&& true));
	}
	function vc4x1x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		BeginReviewProcess();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc4x1x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc4x1x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc4x1x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc4x1x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		AcceptSharingRequest();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc4x1x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RejectSharingRequest();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc4x1x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc4x1x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		ReleaseLockerAccess();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc4x1x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc4x1x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		Terminate();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc4x2x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		BeginReviewProcess();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc4x2x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc4x2x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc4x2x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc4x2x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		AcceptSharingRequest();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc4x2x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RejectSharingRequest();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc4x2x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc4x2x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		ReleaseLockerAccess();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc4x2x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc4x2x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		Terminate();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc4x3x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		BeginReviewProcess();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc4x3x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc4x3x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc4x3x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc4x3x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		AcceptSharingRequest();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc4x3x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RejectSharingRequest();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc4x3x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc4x3x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		ReleaseLockerAccess();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc4x3x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc4x3x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		Terminate();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc4x4x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		BeginReviewProcess();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc4x4x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc4x4x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc4x4x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc4x4x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		AcceptSharingRequest();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc4x4x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RejectSharingRequest();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc4x4x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc4x4x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		ReleaseLockerAccess();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc4x4x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc4x4x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		Terminate();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc4x5x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		BeginReviewProcess();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x5x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x5x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x5x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x5x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		AcceptSharingRequest();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x5x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RejectSharingRequest();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x5x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x5x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		ReleaseLockerAccess();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x5x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc4x5x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.SharingWithThirdParty);
		Terminate();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x0x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		BeginReviewProcess();
		assert(!(State == StateType.Requested&& true));
	}
	function vc5x0x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.Requested&& true));
	}
	function vc5x0x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.Requested&& true));
	}
	function vc5x0x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.Requested&& true));
	}
	function vc5x0x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		AcceptSharingRequest();
		assert(!(State == StateType.Requested&& true));
	}
	function vc5x0x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RejectSharingRequest();
		assert(!(State == StateType.Requested&& true));
	}
	function vc5x0x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.Requested&& true));
	}
	function vc5x0x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		ReleaseLockerAccess();
		assert(!(State == StateType.Requested&& true));
	}
	function vc5x0x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.Requested&& true));
	}
	function vc5x0x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		Terminate();
		assert(!(State == StateType.Requested&& true));
	}
	function vc5x1x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		BeginReviewProcess();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc5x1x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc5x1x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc5x1x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc5x1x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		AcceptSharingRequest();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc5x1x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RejectSharingRequest();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc5x1x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc5x1x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		ReleaseLockerAccess();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc5x1x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc5x1x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		Terminate();
		assert(!(State == StateType.DocumentReview&& true));
	}
	function vc5x2x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		BeginReviewProcess();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc5x2x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc5x2x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc5x2x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc5x2x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		AcceptSharingRequest();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc5x2x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RejectSharingRequest();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc5x2x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc5x2x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		ReleaseLockerAccess();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc5x2x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc5x2x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		Terminate();
		assert(!(State == StateType.AvailableToShare&& true));
	}
	function vc5x3x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		BeginReviewProcess();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc5x3x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc5x3x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc5x3x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc5x3x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		AcceptSharingRequest();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc5x3x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RejectSharingRequest();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc5x3x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc5x3x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		ReleaseLockerAccess();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc5x3x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc5x3x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		Terminate();
		assert(!(State == StateType.SharingRequestPending&& true));
	}
	function vc5x4x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		BeginReviewProcess();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc5x4x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc5x4x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc5x4x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc5x4x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		AcceptSharingRequest();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc5x4x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RejectSharingRequest();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc5x4x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc5x4x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		ReleaseLockerAccess();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc5x4x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc5x4x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		Terminate();
		assert(!(State == StateType.SharingWithThirdParty&& true));
	}
	function vc5x5x0(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		BeginReviewProcess();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x5x1(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RejectApplication(rejectionReason);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x5x2(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		UploadDocuments( lockerIdentifier, image);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x5x3(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		ShareWithThirdParty(thirdPartyRequestor, expirationDate, intendedPurpose);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x5x4(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		AcceptSharingRequest();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x5x5(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RejectSharingRequest();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x5x6(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RequestLockerAccess(intendedPurpose);
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x5x7(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		ReleaseLockerAccess();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x5x8(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		RevokeAccessFromThirdParty();
		assert(!(State == StateType.Terminated&& true));
	}
	function vc5x5x9(string memory rejectionReason, string memory lockerIdentifier, string memory image, address thirdPartyRequestor, string memory expirationDate, string memory intendedPurpose) hasInitialized payable public {
		require(State == StateType.Terminated);
		Terminate();
		assert(!(State == StateType.Terminated&& true));
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