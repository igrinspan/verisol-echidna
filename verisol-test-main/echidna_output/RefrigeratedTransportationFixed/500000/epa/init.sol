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
		assert(!(!((State != StateType.Completed && State != StateType.OutOfCompliance)) && !((State != StateType.Completed && State != StateType.OutOfCompliance)) && !((State != StateType.Completed && State != StateType.OutOfCompliance && State != StateType.Created))));
	}
	function vc1x0x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		assert(!(!((State != StateType.Completed && State != StateType.OutOfCompliance)) && !((State != StateType.Completed && State != StateType.OutOfCompliance)) && (State != StateType.Completed && State != StateType.OutOfCompliance && State != StateType.Created)));
	}
	function vc2x0x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		assert(!((State != StateType.Completed && State != StateType.OutOfCompliance) && (State != StateType.Completed && State != StateType.OutOfCompliance) && !((State != StateType.Completed && State != StateType.OutOfCompliance && State != StateType.Created))));
	}
	function vc3x0x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		assert(!((State != StateType.Completed && State != StateType.OutOfCompliance) && (State != StateType.Completed && State != StateType.OutOfCompliance) && (State != StateType.Completed && State != StateType.OutOfCompliance && State != StateType.Created)));
	}
    //Set of States
    enum StateType { Created, InTransit, Completed, OutOfCompliance}
    enum SensorType { None, Humidity, Temperature }

    //List of properties
    StateType State;
    address Owner;
    address InitiatingCounterparty;
    address Counterparty;
    address PreviousCounterparty;
    address Device;
    address SupplyChainOwner;
    address SupplyChainObserver;
    int MinHumidity;
    int MaxHumidity;
    int MinTemperature;
    int MaxTemperature;
    SensorType ComplianceSensorType;
    int ComplianceSensorReading;
    bool ComplianceStatus;
    enum ComplianceDetailEnum {NA, HumidityOutOfRange, TemperatureOutOfRange}
    ComplianceDetailEnum ComplianceDetail;
    int LastSensorUpdateTimestamp;

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
        ComplianceDetail = ComplianceDetailEnum.NA;
				has_initialized = true;
    }

}