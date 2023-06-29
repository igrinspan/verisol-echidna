pragma solidity >=0.4.25 <0.9.0;

contract RoomThermostat {
	modifier hasInitialized {
		require(has_initialized); 
		_; 
	}

	modifier hasNotInitialized {
		require(!has_initialized); 
		_; 
	}

	bool has_initialized = false;

	function vc0x0x0(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created);
		StartThermostat();
		assert(!(State == StateType.Created&& true));
	}
	function vc0x0x1(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created);
		SetTargetTemperature(targetTemperature);
		assert(!(State == StateType.Created&& true));
	}
	function vc0x0x2(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created);
		SetMode(mode);
		assert(!(State == StateType.Created&& true));
	}
	function vc0x1x0(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created);
		StartThermostat();
		assert(!(State == StateType.InUse&& true));
	}
	function vc0x1x1(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created);
		SetTargetTemperature(targetTemperature);
		assert(!(State == StateType.InUse&& true));
	}
	function vc0x1x2(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created);
		SetMode(mode);
		assert(!(State == StateType.InUse&& true));
	}
	function vc1x0x0(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.InUse);
		StartThermostat();
		assert(!(State == StateType.Created&& true));
	}
	function vc1x0x1(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.InUse);
		SetTargetTemperature(targetTemperature);
		assert(!(State == StateType.Created&& true));
	}
	function vc1x0x2(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.InUse);
		SetMode(mode);
		assert(!(State == StateType.Created&& true));
	}
	function vc1x1x0(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.InUse);
		StartThermostat();
		assert(!(State == StateType.InUse&& true));
	}
	function vc1x1x1(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.InUse);
		SetTargetTemperature(targetTemperature);
		assert(!(State == StateType.InUse&& true));
	}
	function vc1x1x2(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.InUse);
		SetMode(mode);
		assert(!(State == StateType.InUse&& true));
	}
    //Set of States
    enum StateType { Created, InUse}
    
    //List of properties
    StateType public State;
    address public Installer;
    address public User;
    int public TargetTemperature;
    enum ModeEnum {Off, Cool, Heat, Auto}
    ModeEnum public  Mode;
    
    function my_constructor(address thermostatInstaller, address thermostatUser) public{
		require(!has_initialized);
        Installer = thermostatInstaller;
        User = thermostatUser;
        TargetTemperature = 70;
        State = StateType.Created;
		has_initialized = true;
    }

    function StartThermostat() hasInitialized public{
        if (Installer != msg.sender || State != StateType.Created)
        {
            revert();
        }

        State = StateType.InUse;
    }

    function SetTargetTemperature(int targetTemperature) hasInitialized public{
        if (User != msg.sender || State != StateType.InUse)
        {
            revert();
        }
        TargetTemperature = targetTemperature;
    }

    function SetMode(ModeEnum mode) hasInitialized public{
        if (User != msg.sender || State != StateType.InUse)
        {
            revert();
        }
        Mode = mode;
    }
}