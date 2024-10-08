**CREATE A TOKEN**

"Create a Token" is a project designed to introduce the basic concepts behind token creation on the Ethereum blockchain. In this project, we build a simple smart contract that models a custom cryptocurrency token. This token has functionality for both minting and burning, two fundamental operations that allow for the issuance and reduction of tokens. The code, written in Solidity and deployable through platforms like Remix, serves as an educational example for learning about blockchain token standards, balance tracking, and conditional logic in smart contracts.

The smart contract includes:

Token Details: Publicly accessible variables for the token’s name, abbreviation, and total supply, which give the token a distinct identity on the blockchain.

Balance Mapping: A storage mapping of each address's token balance, enabling tracking of how many tokens each user holds.

Minting Functionality: A mint function to increase the total supply of tokens and add tokens to a user’s balance. This simulates the issuance of new tokens, a common feature in cryptocurrencies.

Burning Functionality: A burn function to decrease both a user’s balance and the overall token supply, enforcing a balance check to prevent burning more tokens than available.

This project introduces key programming concepts in Solidity, such as state variables, mappings, and functions with conditions, making it an excellent foundational project for anyone looking to understand token creation on Ethereum.

**DIVIDING THE CONTENTS OF THE CODES.**

1. Public Variables
   
- tokenName: The name of the token (in this example, "MyToken").
- tokenAbbrv: The abbreviation for the token (e.g., "MTK").
- totalSupply: The total supply of the token, initially set to zero but updated with each mint or burn.

2. Mapping for Balances

A mapping of addresses to token balances (`address => uint`) keeps track of each user's token holdings.

3. Mint Function

The `mint` function increases both the total supply of tokens and the balance of a specified address. This function takes two parameters:
- `address _to`: The address to which the tokens are minted.
- `uint _value`: The number of tokens to mint.

Upon execution:
- The `totalSupply` is increased by `_value`.
- The balance of `_to` is incremented by `_value`.

4. Burn Function

The `burn` function decreases both the total supply of tokens and the balance of a specified address, given that the address holds a sufficient balance. This function also takes two parameters:
- `address _from`: The address from which the tokens are burned.
- `uint _value`: The number of tokens to burn.

The function includes a check to ensure that `_from` has a balance greater than or equal to `_value`:
- If the condition is met, `_value` is subtracted from `totalSupply` and the balance of `_from`.
- If the condition fails, the transaction is reverted with an error message.

**EXECUTING PROGRAM**
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension. Copy and paste the following code into the file:

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile token.sol" button. 

Once the code is compiled you have to go to the tab called "Deploy and  run Transactions" and then click the button called "Deploy". And there you can copy first the address so that you can mint and burn under the copied address. Now we can mint as much as many values as we want and burn as much as only equal to the remaining balance under the address.

**AUTHOR**


Metacrafter KiEL
@Leamshii


