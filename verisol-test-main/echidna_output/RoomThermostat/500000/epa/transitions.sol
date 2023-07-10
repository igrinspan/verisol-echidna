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

	function vc1x0x0(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created && !(State == StateType.InUse) && !(State == StateType.InUse));
		require(Installer == msg.sender);
		StartThermostat();
		assert(!(!(State == StateType.Created) && !(State == StateType.InUse) && !(State == StateType.InUse)&& true));
	}
	function vc1x1x0(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created && !(State == StateType.InUse) && !(State == StateType.InUse));
		require(Installer == msg.sender);
		StartThermostat();
		assert(!(State == StateType.Created && !(State == StateType.InUse) && !(State == StateType.InUse)&& true));
	}
	function vc1x2x0(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created && !(State == StateType.InUse) && !(State == StateType.InUse));
		require(Installer == msg.sender);
		StartThermostat();
		assert(!(!(State == StateType.Created) && State == StateType.InUse && State == StateType.InUse&& true));
	}
	function vc1x3x0(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created && !(State == StateType.InUse) && !(State == StateType.InUse));
		require(Installer == msg.sender);
		StartThermostat();
		assert(!(State == StateType.Created && State == StateType.InUse && State == StateType.InUse&& true));
	}
	function vc2x0x1(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(!(State == StateType.Created) && State == StateType.InUse && State == StateType.InUse);
		require(User == msg.sender);
		SetTargetTemperature(targetTemperature);
		assert(!(!(State == StateType.Created) && !(State == StateType.InUse) && !(State == StateType.InUse)&& true));
	}
	function vc2x0x2(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(!(State == StateType.Created) && State == StateType.InUse && State == StateType.InUse);
		require(User == msg.sender);
		SetMode(mode);
		assert(!(!(State == StateType.Created) && !(State == StateType.InUse) && !(State == StateType.InUse)&& true));
	}
	function vc2x1x1(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(!(State == StateType.Created) && State == StateType.InUse && State == StateType.InUse);
		require(User == msg.sender);
		SetTargetTemperature(targetTemperature);
		assert(!(State == StateType.Created && !(State == StateType.InUse) && !(State == StateType.InUse)&& true));
	}
	function vc2x1x2(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(!(State == StateType.Created) && State == StateType.InUse && State == StateType.InUse);
		require(User == msg.sender);
		SetMode(mode);
		assert(!(State == StateType.Created && !(State == StateType.InUse) && !(State == StateType.InUse)&& true));
	}
	function vc2x2x1(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(!(State == StateType.Created) && State == StateType.InUse && State == StateType.InUse);
		require(User == msg.sender);
		SetTargetTemperature(targetTemperature);
		assert(!(!(State == StateType.Created) && State == StateType.InUse && State == StateType.InUse&& true));
	}
	function vc2x2x2(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(!(State == StateType.Created) && State == StateType.InUse && State == StateType.InUse);
		require(User == msg.sender);
		SetMode(mode);
		assert(!(!(State == StateType.Created) && State == StateType.InUse && State == StateType.InUse&& true));
	}
	function vc2x3x1(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(!(State == StateType.Created) && State == StateType.InUse && State == StateType.InUse);
		require(User == msg.sender);
		SetTargetTemperature(targetTemperature);
		assert(!(State == StateType.Created && State == StateType.InUse && State == StateType.InUse&& true));
	}
	function vc2x3x2(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(!(State == StateType.Created) && State == StateType.InUse && State == StateType.InUse);
		require(User == msg.sender);
		SetMode(mode);
		assert(!(State == StateType.Created && State == StateType.InUse && State == StateType.InUse&& true));
	}
	function vc3x0x0(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created && State == StateType.InUse && State == StateType.InUse);
		require(Installer == msg.sender);
		StartThermostat();
		assert(!(!(State == StateType.Created) && !(State == StateType.InUse) && !(State == StateType.InUse)&& true));
	}
	function vc3x0x1(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created && State == StateType.InUse && State == StateType.InUse);
		require(User == msg.sender);
		SetTargetTemperature(targetTemperature);
		assert(!(!(State == StateType.Created) && !(State == StateType.InUse) && !(State == StateType.InUse)&& true));
	}
	function vc3x0x2(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created && State == StateType.InUse && State == StateType.InUse);
		require(User == msg.sender);
		SetMode(mode);
		assert(!(!(State == StateType.Created) && !(State == StateType.InUse) && !(State == StateType.InUse)&& true));
	}
	function vc3x1x0(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created && State == StateType.InUse && State == StateType.InUse);
		require(Installer == msg.sender);
		StartThermostat();
		assert(!(State == StateType.Created && !(State == StateType.InUse) && !(State == StateType.InUse)&& true));
	}
	function vc3x1x1(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created && State == StateType.InUse && State == StateType.InUse);
		require(User == msg.sender);
		SetTargetTemperature(targetTemperature);
		assert(!(State == StateType.Created && !(State == StateType.InUse) && !(State == StateType.InUse)&& true));
	}
	function vc3x1x2(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created && State == StateType.InUse && State == StateType.InUse);
		require(User == msg.sender);
		SetMode(mode);
		assert(!(State == StateType.Created && !(State == StateType.InUse) && !(State == StateType.InUse)&& true));
	}
	function vc3x2x0(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created && State == StateType.InUse && State == StateType.InUse);
		require(Installer == msg.sender);
		StartThermostat();
		assert(!(!(State == StateType.Created) && State == StateType.InUse && State == StateType.InUse&& true));
	}
	function vc3x2x1(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created && State == StateType.InUse && State == StateType.InUse);
		require(User == msg.sender);
		SetTargetTemperature(targetTemperature);
		assert(!(!(State == StateType.Created) && State == StateType.InUse && State == StateType.InUse&& true));
	}
	function vc3x2x2(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created && State == StateType.InUse && State == StateType.InUse);
		require(User == msg.sender);
		SetMode(mode);
		assert(!(!(State == StateType.Created) && State == StateType.InUse && State == StateType.InUse&& true));
	}
	function vc3x3x0(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created && State == StateType.InUse && State == StateType.InUse);
		require(Installer == msg.sender);
		StartThermostat();
		assert(!(State == StateType.Created && State == StateType.InUse && State == StateType.InUse&& true));
	}
	function vc3x3x1(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created && State == StateType.InUse && State == StateType.InUse);
		require(User == msg.sender);
		SetTargetTemperature(targetTemperature);
		assert(!(State == StateType.Created && State == StateType.InUse && State == StateType.InUse&& true));
	}
	function vc3x3x2(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		require(State == StateType.Created && State == StateType.InUse && State == StateType.InUse);
		require(User == msg.sender);
		SetMode(mode);
		assert(!(State == StateType.Created && State == StateType.InUse && State == StateType.InUse&& true));
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
    
    function my_constructor(address thermostatInstaller, address thermostatUser) hasNotInitialized public
    {
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