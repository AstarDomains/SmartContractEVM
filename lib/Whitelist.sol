pragma solidity ^0.8.0;

abstract contract WhiteList is Ownable {

    mapping(address => uint8) private _whiteList;
	
	bool public isWhiteListActive = false;

    function setWhiteListActive(bool _isWhiteListActive) external onlyOwner {
        isWhiteListActive = _isWhiteListActive;
    }

    function setWhiteLists(address[] calldata addresses, uint8 amount) external onlyOwner {
        for (uint256 i = 0; i < addresses.length; i++) 
		{
            _whiteList[addresses[i]] = amount;
        }
    }
	
	function setWhiteList(address addresses, uint8 amount) external onlyOwner {
        _whiteList[addresses] = amount;
    }
	
	function amountInWhiteList(address addr) external view returns (bool) {
        return _whiteList[addr];
    }
	
	function IsInWhiteList(address addr) external view returns (bool) {
		uint8 _num = _whitelist[addr];
		bool _isOk = false;
		if (_num > 0){
			_isOk = true;
		}
        return _whiteList[addr];
    }
}