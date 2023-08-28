pragma solidity >=0.4.25 <0.9.0;


contract RefrigeratedTransportation {
	modifier hasInitialized {
		require(has_initialized); 
		_; 
	}

	modifier hasNotInitialized {
		require(!has_initialized); 
		_; 
	}

	bool has_initialized = false;

	function vc0x0x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		assert(!(State == StateType.Created));
	}
	function vc1x0x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		assert(!(State == StateType.InTransit));
	}
	function vc2x0x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		assert(!(State == StateType.Completed));
	}
	function vc3x0x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		assert(!(State == StateType.OutOfCompliance));
	}

    //Set of States
    enum StateType { Created, InTransit, Completed, OutOfCompliance}
    enum SensorType { None, Humidity, Temperature }

    //List of properties
    StateType public  State;
    address public  Owner;
    address public  InitiatingCounterparty;
    address public  Counterparty;
    address public  PreviousCounterparty;
    address public  Device;
    address public  SupplyChainOwner;
    address public  SupplyChainObserver;
    int public  MinHumidity;
    int public  MaxHumidity;
    int public  MinTemperature;
    int public  MaxTemperature;
    SensorType public  ComplianceSensorType;
    int public  ComplianceSensorReading;
    bool public  ComplianceStatus;
    string public  ComplianceDetail;
    int public  LastSensorUpdateTimestamp;

    function my_constructor(address device, address supplyChainOwner, address supplyChainObserver, int minHumidity, int maxHumidity, int minTemperature, int maxTemperature) hasNotInitialized public
    {
        ComplianceStatus = true;
        ComplianceSensorReading = -1;
        InitiatingCounterparty = msg.sender;
        Owner = InitiatingCounterparty;
        Counterparty = InitiatingCounterparty;
        Device = device;
        SupplyChainOwner = supplyChainOwner;
        SupplyChainObserver = supplyChainObserver;
        MinHumidity = minHumidity;
        MaxHumidity = maxHumidity;
        MinTemperature = minTemperature;
        MaxTemperature = maxTemperature;
        State = StateType.Created;
        ComplianceDetail = 'N/A';
        // ContractCreated();
				has_initialized = true;
    }

}