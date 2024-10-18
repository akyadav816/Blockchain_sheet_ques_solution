// SPDX-License-Identifier: GPL-3.0

pragma solidity <0.9.0;

//	Write a Solidity function to check if a given address is a contract or not.
contract demo {
    function checkaddress(address addr) external view returns (bool) {
        uint size;
        assembly {
            size := extcodesize(addr)
        }
        return size > 0;
    }
}
