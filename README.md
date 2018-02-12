# Voting example dapp on Truffle Framework.

This is an example dapp on Ethereum local network using Truffle Framework.

We develop a dapp where the users can create proposals and vote them. Of course, they can vote once per proposal with the options approve, against or absence.

# Preconditions

This dapp is based on the official tutorial of Truffle Framework: http://truffleframework.com/tutorials/pet-shop

So, I recommend you to read it before you keep on with this example.

You need pay attention to configure and run Ganache (for a local blockchain) and MetaMask (for a client web blockchain).

# Deployment

* git clone https://github.com/bukosabino/truffle-voting-dapp.git
* cd truffle-voting-dapp
* npm install -g truffle
* npm install
* truffle compile
* truffle migrate --reset
* npm run dev

# TODO:

* Control of asynchronism events.
* Init and end dates to proposals.
* Anonymous users.
* Use Ropstem Ethereum testnets.

# Credits:

Developed by Bukosabino at Lecrin Technologies - http://lecrintech.com

We are glad receiving any contribution, idea or feedback.
