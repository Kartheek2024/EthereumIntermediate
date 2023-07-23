
# ErrorHandlingExample Smart Contract

**Summary:**
The `ErrorHandlingExample` smart contract is a simple Ethereum blockchain contract showcasing different error handling techniques using `require`, `assert`, and `revert` statements. It allows users to deposit Ether and perform various actions with appropriate error checks.

## Usage

1. Deploy the contract on the Ethereum blockchain.
2. The contract creator becomes the `owner` of the contract and gains special privileges.
3. The `deposit` function enables anyone to deposit Ether into the contract. The deposited amount must be greater than 0, or the transaction will revert with an error message.
4. The `checkAmount` function verifies that the `totalAmount` variable matches the `_expectedAmount`. If the condition is not met, an assertion failure will trigger an exception and revert the transaction.
5. The `forceRevert` function is designed to always revert the transaction with a custom error message.

## Smart Contract Details


## Function Details

### deposit

Allows anyone to deposit Ether into the contract.

**Parameters:**
- None

**Error Handling:**
- The transaction reverts if the deposited amount is not greater than 0.

### checkAmount

Verifies if the `totalAmount` matches the `_expectedAmount`.

**Parameters:**
- `_expectedAmount`: The expected value of the `totalAmount` variable.

**Error Handling:**
- The function uses `assert` to check the equality of the `totalAmount` with the `_expectedAmount`. If the condition is not met, an assertion failure will trigger an exception and revert the transaction.

### forceRevert

Always reverts the transaction with a custom error message.

**Parameters:**
- None

**Error Handling:**
- The function always reverts the transaction with the message "This function always reverts".



## Disclaimer

This contract is for demonstration purposes only and may not have undergone a thorough security review. Use it at your own risk.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
