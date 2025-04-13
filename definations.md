### msg

- msg variable is a global variable

- attestation is a order selection mechanism

## Accounts

- EXTERNAL controlled by humans
- CONTRACT controlled by code
- Every account has a persistent key-value store mapping 256-bit words to 256-bit words called storage

### Srorages,Transient Storage ,Memory

Storage - Each account has a data area called storage, which is persistent between function calls and transactions.
Storage is a key-value store that maps 256-bit words to 256-bit words.

- transient storage

Similar to storage, there is another data area called transient storage, where the main difference is that it is reset at the end of each transaction. The values stored in this data location persist only across function calls originating from the first call of the transaction

- memory

The third data area is called memory, of which a contract obtains a freshly cleared instance for each message call. Memory is linear and can be addressed at byte level, but reads are limited to a width of 256 bits, while writes can be either 8 bits or 256 bits wide

- Immutable and constant variables are stored in the code region

The code is the region where the EVM instructions of a smart contract are stored. Code is the bytes read, interpreted, and executed by the EVM during smart contract execution. Instruction data stored in the code is persistent as part of a contract account state field. Immutable and constant variables are stored in the code region
