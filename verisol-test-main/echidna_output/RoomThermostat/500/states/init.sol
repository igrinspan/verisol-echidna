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
		assert(!(State == StateType.Created));
	}
	function vc1x0x0(int targetTemperature, ModeEnum mode) hasInitialized payable public {
		assert(!(State == StateType.InUse));
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

}