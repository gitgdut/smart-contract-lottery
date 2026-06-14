export PATH := $(HOME)/.foundry/bin:$(PATH)

-include .env

//--show-standard-json-input

.PHONY: all test deploy

build :; forge build

test :;forge test

install :;forge install cyfrin/foundry-devops@0.2.2 && forge install smartcontractkit/chianlink-brownie@0.1.1

deploy-sepolia:
	@forge script script/DeployRaffle.s.sol:DeployRaffle --sig "deployContract()" --rpc-url https://eth-sepolia.g.alchemy.com/v2/j75Nt0DfNQph85yMpdQS- --private-key $(PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv