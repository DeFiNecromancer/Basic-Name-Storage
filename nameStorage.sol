//SPDX-License-Identifier: MIT

pragma solidity 0.8.24; 
/* Specifying the Solidity Version this 
   contract is intended to be compiled in. */

contract nameStorage {
    string public name = "DeFi Necromancer"; 
    /* State Variable 'name' is publicly visible and 
       stored as a string data type. */

    function storeName(string calldata _name) external {
        name = _name;
        /* This is an externally callable function that changes the state
           variable content for the 'name' variable to whatever is passed
           to the function in the place of the _name parameter. To save on 
           gas, rather than using the public parameter, external has been utilized.
           This is suitable because this function will not to be called within by the 
           contract itself, only by an external account. */
    }

    function viewName() external view returns(string memory) {
        return name;
        /* This is an externally callable function that returns the Name stored
           in Contract Storage as a State Variable.
           
           This function is unneccesary, as a getter function
           is automatically created for publicly accessible 
           state variables by default in solidity; this is merely
           for show in this example. */
    }
    /* !based0.1: 
    */
    // BasedAI |  https://www.basedlang.com/ | https://research.pepecoin.io/
}
