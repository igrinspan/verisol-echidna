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
		require(State == StateType.Created);
		IngestTelemetry(humidity, temperature, timestamp);
		assert(!(State == StateType.Created&& true));
	}
	function vc0x0x1(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Created);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.Created&& true));
	}
	function vc0x0x2(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Created);
		Complete();
		assert(!(State == StateType.Created&& true));
	}
	function vc0x1x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Created);
		IngestTelemetry(humidity, temperature, timestamp);
		assert(!(State == StateType.InTransit&& true));
	}
	function vc0x1x1(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Created);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.InTransit&& true));
	}
	function vc0x1x2(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Created);
		Complete();
		assert(!(State == StateType.InTransit&& true));
	}
	function vc0x2x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Created);
		IngestTelemetry(humidity, temperature, timestamp);
		assert(!(State == StateType.Completed&& true));
	}
	function vc0x2x1(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Created);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.Completed&& true));
	}
	function vc0x2x2(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Created);
		Complete();
		assert(!(State == StateType.Completed&& true));
	}
	function vc0x3x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Created);
		IngestTelemetry(humidity, temperature, timestamp);
		assert(!(State == StateType.OutOfCompliance&& true));
	}
	function vc0x3x1(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Created);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.OutOfCompliance&& true));
	}
	function vc0x3x2(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Created);
		Complete();
		assert(!(State == StateType.OutOfCompliance&& true));
	}
	function vc1x0x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.InTransit);
		IngestTelemetry(humidity, temperature, timestamp);
		assert(!(State == StateType.Created&& true));
	}
	function vc1x0x1(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.InTransit);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.Created&& true));
	}
	function vc1x0x2(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.InTransit);
		Complete();
		assert(!(State == StateType.Created&& true));
	}
	function vc1x1x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.InTransit);
		IngestTelemetry(humidity, temperature, timestamp);
		assert(!(State == StateType.InTransit&& true));
	}
	function vc1x1x1(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.InTransit);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.InTransit&& true));
	}
	function vc1x1x2(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.InTransit);
		Complete();
		assert(!(State == StateType.InTransit&& true));
	}
	function vc1x2x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.InTransit);
		IngestTelemetry(humidity, temperature, timestamp);
		assert(!(State == StateType.Completed&& true));
	}
	function vc1x2x1(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.InTransit);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.Completed&& true));
	}
	function vc1x2x2(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.InTransit);
		Complete();
		assert(!(State == StateType.Completed&& true));
	}
	function vc1x3x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.InTransit);
		IngestTelemetry(humidity, temperature, timestamp);
		assert(!(State == StateType.OutOfCompliance&& true));
	}
	function vc1x3x1(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.InTransit);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.OutOfCompliance&& true));
	}
	function vc1x3x2(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.InTransit);
		Complete();
		assert(!(State == StateType.OutOfCompliance&& true));
	}
	function vc2x0x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Completed);
		IngestTelemetry(humidity, temperature, timestamp);
		assert(!(State == StateType.Created&& true));
	}
	function vc2x0x1(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Completed);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.Created&& true));
	}
	function vc2x0x2(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Completed);
		Complete();
		assert(!(State == StateType.Created&& true));
	}
	function vc2x1x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Completed);
		IngestTelemetry(humidity, temperature, timestamp);
		assert(!(State == StateType.InTransit&& true));
	}
	function vc2x1x1(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Completed);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.InTransit&& true));
	}
	function vc2x1x2(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Completed);
		Complete();
		assert(!(State == StateType.InTransit&& true));
	}
	function vc2x2x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Completed);
		IngestTelemetry(humidity, temperature, timestamp);
		assert(!(State == StateType.Completed&& true));
	}
	function vc2x2x1(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Completed);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.Completed&& true));
	}
	function vc2x2x2(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Completed);
		Complete();
		assert(!(State == StateType.Completed&& true));
	}
	function vc2x3x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Completed);
		IngestTelemetry(humidity, temperature, timestamp);
		assert(!(State == StateType.OutOfCompliance&& true));
	}
	function vc2x3x1(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Completed);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.OutOfCompliance&& true));
	}
	function vc2x3x2(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.Completed);
		Complete();
		assert(!(State == StateType.OutOfCompliance&& true));
	}
	function vc3x0x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.OutOfCompliance);
		IngestTelemetry(humidity, temperature, timestamp);
		assert(!(State == StateType.Created&& true));
	}
	function vc3x0x1(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.OutOfCompliance);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.Created&& true));
	}
	function vc3x0x2(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.OutOfCompliance);
		Complete();
		assert(!(State == StateType.Created&& true));
	}
	function vc3x1x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.OutOfCompliance);
		IngestTelemetry(humidity, temperature, timestamp);
		assert(!(State == StateType.InTransit&& true));
	}
	function vc3x1x1(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.OutOfCompliance);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.InTransit&& true));
	}
	function vc3x1x2(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.OutOfCompliance);
		Complete();
		assert(!(State == StateType.InTransit&& true));
	}
	function vc3x2x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.OutOfCompliance);
		IngestTelemetry(humidity, temperature, timestamp);
		assert(!(State == StateType.Completed&& true));
	}
	function vc3x2x1(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.OutOfCompliance);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.Completed&& true));
	}
	function vc3x2x2(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.OutOfCompliance);
		Complete();
		assert(!(State == StateType.Completed&& true));
	}
	function vc3x3x0(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.OutOfCompliance);
		IngestTelemetry(humidity, temperature, timestamp);
		assert(!(State == StateType.OutOfCompliance&& true));
	}
	function vc3x3x1(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.OutOfCompliance);
		TransferResponsibility(newCounterparty);
		assert(!(State == StateType.OutOfCompliance&& true));
	}
	function vc3x3x2(int humidity, int temperature, int timestamp, address newCounterparty) hasInitialized payable public {
		require(State == StateType.OutOfCompliance);
		Complete();
		assert(!(State == StateType.OutOfCompliance&& true));
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

    function IngestTelemetry(int humidity, int temperature, int timestamp) hasInitialized public
    {
        // Separately check for states and sender 
        // to avoid not checking for state when the sender is the device
        // because of the logical OR
        if ( State == StateType.Completed )
        {
            revert();
        }

        if ( State == StateType.OutOfCompliance )
        {
            revert();
        }

        if (Device != msg.sender)
        {
            revert();
        }

        LastSensorUpdateTimestamp = timestamp;

        if (humidity > MaxHumidity || humidity < MinHumidity)
        {
            ComplianceSensorType = SensorType.Humidity;
            ComplianceSensorReading = humidity;
            ComplianceDetail = 'Humidity value out of range.';
            ComplianceStatus = false;
        }
        else if (temperature > MaxTemperature || temperature < MinTemperature)
        {
            ComplianceSensorType = SensorType.Temperature;
            ComplianceSensorReading = temperature;
            ComplianceDetail = 'Temperature value out of range.';
            ComplianceStatus = false;
        }

        if (ComplianceStatus == false)
        {
            State = StateType.OutOfCompliance;
        }

        // ContractUpdated('IngestTelemetry');
    }

    function TransferResponsibility(address newCounterparty) hasInitialized public
    {
        // keep the state checking, message sender, and device checks separate
        // to not get cloberred by the order of evaluation for logical OR
        if ( State == StateType.Completed )
        {
            revert();
        }

        if ( State == StateType.OutOfCompliance )
        {
            revert();
        }

        if ( InitiatingCounterparty != msg.sender && Counterparty != msg.sender )
        {
            revert();
        }

        if ( newCounterparty == Device )
        {
            revert();
        }

        if (State == StateType.Created)
        {
            State = StateType.InTransit;
        }

        PreviousCounterparty = Counterparty;
        Counterparty = newCounterparty;
        // ContractUpdated('TransferResponsibility');
    }

    function Complete() hasInitialized public
    {
        // keep the state checking, message sender, and device checks separate
        // to not get cloberred by the order of evaluation for logical OR
        if ( State == StateType.Completed )
        {
            revert();
        }

        if ( State == StateType.OutOfCompliance )
        {
            revert();
        }

        if (Owner != msg.sender && SupplyChainOwner != msg.sender)
        {
            revert();
        }

        State = StateType.Completed;
        PreviousCounterparty = Counterparty;
        Counterparty = address(0x0);
        // ContractUpdated('Complete');
    }
}