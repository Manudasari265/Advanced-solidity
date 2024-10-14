# Proof of work during Advanced Solidity bootcamp

### `Note-` **All of the concept related answers will be in README.md on a weekly basis**
### `Note-` **All of the code related solutions will be in respective directories on a weekly basis**

## Week - 1
Topics covered - 
   * Blockchain Theory / Modular chains
   * L2 introduction
   * Ethereum Roadmap
   * Ethereum consensus
   * Ethereum state / transactions and blocks
   * Account abstraction
   * Danksharding
   * Cryptography review

- [x] **Why is client diversity important for Ethereum?**
- [x] **Where is the full Ethereum state held?**
- [x] **What is replay attack? which 2 pieces of information can prevent it?**
- [] **In a contract, how do we know who called a view function?**

**Q1 Why is client diversity important for Ethereum?**

`"Ethereum is a distributed network of computers (known as nodes) running software that can verify blocks and transaction data. The software must be run on your computer to turn it into an Ethereum node. There are two separate pieces of software (known as 'clients') required to form a node."`

`"Having many independently developed and maintained clients is vital for the health of a decentralized network"`

`* Bugs`
`* Resilience to attacks`
`* Proof of finality`
`* Shared responsibility`

**Q2 Where is the full Ethereum State held?**

`"The full Ethereum state is stored in a modified Patricia Merkle tree (MPT) data structure, which is a database. The MPT is a tree-like structure that stores key-value pairs efficiently. Each node in the tree has a key, which is the node's hash, and a value, which is the content held within the node."`

`"The Ethereum state is a mapping of Ethereum addresses and their account state. The state is changed by blocks that are full of data in the form of transactions"`

**Q3 What is replay attack? which 2 pieces of information can prevent it?**

`"A replay attack is when a malicious actor captures and retransmits valid data to achieve fraudulent authentication or execute unauthorized actions in a network"`

`1.Timestamps: Similarly, timestamps are a widely used tool for preventing replay attacks. Because timestamps cryptographically ensure the time a message has been sent, they can be used to set arbitrary time spans that determine the validity of messages`

`2.Multi-Factor Authentication: Multi-factor authentication, also known as MFA, is another useful tool to prevent replay attacks because it adds additional authentication steps that are not part of the original data transmission.`

**Q4In a contract, how do we know who called a view function?**

`To determine who called a view function in a Solidity contract, you can use the global variable msg.sender, which holds the address of the account that initiated the call` 
`This works for both view and non-view functions. For example, in a view function, msg.sender will return the caller’s address without modifying the contract’s state.`

