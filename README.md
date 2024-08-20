# Foundry UUPS Upgradeable Contracts

This is a section of the Cyfrin Foundry Solidity Course.

*[⭐️ (4:47:00) | Lesson 13: Foundry Upgradable Contracts](https://www.youtube.com/watch?v=wUjYK5gwNZs&t=17220s)*

*This is for demo purposes only. Upgradeable contracts are a menance and in general should be avoided for 


# Getting Started

## Requirements

- [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
  - You'll know you did it right if you can run `git --version` and you see a response like `git version x.x.x`
- [foundry](https://getfoundry.sh/)
  - You'll know you did it right if you can run `forge --version` and you see a response like `forge 0.2.0 (816e00b 2023-03-16T00:05:26.396218Z)`

## Quickstart

```
git clone https://github.com/SajidSheikh87/foundry-upgrades-cu
cd foundry-upgrades-cu
forge build
```

### Optional Gitpod

If you can't or don't want to run and install locally, you can work with this repo in Gitpod. If you do this, you can skip the `clone this repo` part.

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#github.com/Cyfrin/foundry-upgrades-cu)

# Usage

## Start a local node

```
make anvil
```

## Deploy

This will default to your local node. You need to have it running in another terminal in order for it to deploy.

```
make deploy
```

## Deploy - Other Network

[See below](#deployment-to-a-testnet-or-mainnet)

## Testing

```
forge test
```

### Test Coverage

```
forge coverage
```

and for coverage based testing: 

```
forge coverage --report debug
```


# Creating an account to encrypt your private key

In order to create an account on foundry, you can use the below command:
```
cast wallet import defaultKey --interactive
```
Replace `defaultKey` with the intended name of your account.

# Deployment to a testnet or mainnet

1. Setup environment variables

Once you have created an account by using the method mentioned above, add that account name in the .env file. In our case `ANVIL_TEST_ACCOUNT` and `DEV_ACCOUNT` are the environment variables that are used to point to the Anvil and the development account.

- `DEV_ACCOUNT`: The wallet account created in the previous section of your account **NOTE:** FOR DEVELOPMENT, PLEASE USE AN ACCOUNT THAT DOESN'T HAVE ANY REAL FUNDS ASSOCIATED WITH IT.
- `SEPOLIA_RPC_URL`: This is url of the sepolia testnet node you're working with. You can get setup with one for free from [Alchemy](https://alchemy.com/?a=673c802981)

Optionally, add your `ETHERSCAN_API_KEY` if you want to verify your contract on [Etherscan](https://etherscan.io/).

1. Get testnet ETH

Head over to [faucets.chain.link](https://faucets.chain.link/) and get some testnet ETH. You should see the ETH show up in your metamask.
2. Deploy

```
make deploy ARGS="--network sepolia"
```


## Estimate gas

You can estimate how much gas things cost by running:

```
forge snapshot
```

And you'll see and output file called `.gas-snapshot`


# Formatting


To run code formatting:
```
forge fmt
```


# Thank you!

If you appreciated this, feel free to follow me or donate!

ETH/Arbitrum/Optimism/Polygon/etc Address: 0x8395b193Ed32e39f5169Bc8541681ECb25906B40