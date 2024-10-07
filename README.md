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
