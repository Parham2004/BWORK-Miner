# BWORK-Miner-Ubuntu-16-18-20-Mainnet
Cuda 11.1 .net 5.0 Ubuntu 16,18&amp;20.  Doesnt work with 4090s, use newer directory 

Make 1BasedWorkToken.sh Executable then run the script by doing

``./1BasedWorkToken.sh``

That will run miner and install dependicies.

Needs cuda 11.1 and .net 5.0


# To Test your mining setup, simply swap to the testnet by changing these values in the BasedWorkToken.conf file
``
  "web3api": "https://sepolia.base.org/",
  "contractAddress": "0xE195546aA25dD513896B208f9145B676c0E7BF01",
  "chainID": 84532,
``
  [Heres a link to check the Testnet Explorer](https://sepolia.basescan.org/address/0xe195546aa25dd513896b208f9145b676c0e7bf01#tokentxns)

[Remember our testnet website that is also available](https://testnet.basedworktoken.org)

