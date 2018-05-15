# Voting example DApp on Truffle Framework.

This is a DApp example on Ethereum local network using Truffle Framework.

If you want use this dapp on ropsten testnet you can check this repo: https://github.com/bukosabino/truffle-voting-dapp-ropsten

We develop a DApp where the users can create proposals and vote them. Of course, they can vote once per proposal with the options in support, against or absence.

[For Spanish speaking readers, you can read more about this tutorial](https://medium.com/@bukosabino/desarrollo-de-una-dapp-sobre-la-red-ethereum-1a4665c3856a).

# Preconditions

This dapp is based on the official tutorial of Truffle Framework: http://truffleframework.com/tutorials/pet-shop. So, I strongly recommend to read it before.

You need to pay attention to configure and run Ganache (for a local blockchain) and MetaMask (for a client web blockchain).

# Deployment

* git clone https://github.com/bukosabino/truffle-voting-dapp.git
* cd truffle-voting-dapp
* npm install -g truffle
* npm install
* truffle compile
* truffle migrate --reset
* npm run dev

# TODO:

* Init and end dates to proposals.
* Anonymous users.

# Credits:

Developed by Bukosabino at Lecrin Technologies - http://lecrintech.com

We are glad to receive any contribution, idea or feedback.

# Donation Address

* ETH: 0x96d6e3823b655602cc643996c1ada8b6b532f0c0
* DASH: XrXUic1huVaFfSqDygveADwNAbdutz41VG
