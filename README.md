Simple command line tool for interacting with the Metaverse VM.

```sh
NAME:
   mvs-vm-cli - Metaverse Hyperspace VM

USAGE:
   mvs-vm-cli [global options] command [command options] [arguments...]

VERSION:
   0.11.3

COMMANDS:
   block, bl        Block details for a block number (decimal integer) or hash (hexadecimal with 0x prefix). Omit for latest.
   transaction, tx  Transaction details for a tx hash
   receipt, rc      Transaction receipt for a tx hash
   address, addr    Account details for a specific address, or the one corresponding to the private key.
   balance          Get balance for your private key or an address passed in. eg: `balance 0xABC123`
   contract, c      Contract operations
   myaddress        Returns the address associated with MVS_PRIVATE_KEY
   account, a       Account operations
   transfer, send   Transfer ETP or MST tokens to another account. eg: `mvs-vm-cli transfer 10.1 to 0xADDRESS`
   env              List environment variables
   help, h          Shows a list of commands or help for one command

GLOBAL OPTIONS:
   --network value, -n value  The name of the network. Options: hyperspace/testnet/localhost. (default: "localhost") [$MVS_NETWORK]
   --testnet                  Shorthand for '-network testnet'.
   --rpc-url value            The network RPC URL [$MVS_RPC_URL]
   --verbose                  Enable verbose logging
   --format value, -f value   Output format. Options: json. Default: human readable output.
   --help, -h                 show help
   --version, -v              print the version
```

## Quickstart

If you just plan to read from the blockchain, you do not need any ETP and you do not need to set your `MVS_PRIVATE_KEY`. If you plan to deploy contracts or write anything to the blockchain, you'll need ETP and you'll need to set your `MVS_PRIVATE_KEY` for the account that has those tokens.

### Network selection (Optional)
#### a) Connect to a local node (default)

This option is the default. It will try to connect to a local node on http://localhost:9933 which is the default of a locally running fullnode. 
#### b) Use Hyperspace mainnet explorer RPC

Set the environment variable

```sh
# To use the mainnet
export MVS_NETWORK=hyperspace
# OR
export MVS_RPC_URL=https://vm.mvs.org/mainnet_rpc/
```

Or add the parameter --network hyperspace to your mvs-vm-cli command

#### c) Use Hyperspace testnet explorer RPC

```sh
# To use the mainnet
export MVS_NETWORK=testnet
# OR
export MVS_RPC_URL=https://vm.mvs.org/testnet_rpc/
```

#### d) Define custom url

```sh
export MVS_RPC_URL=http://IP_ADDRESS:PORT
```

### Set Private Key Environment (optional)

Required if you plan to deploy contracts or sign transactions.

```sh
# set environment variable 
export MVS_PRIVATE_KEY=0x...
```

### 

### Check balance

```sh
mvs-vm-cli balance
```

### Transfer ETP

```sh
mvs-vm-cli transfer 0.1 to 0x67683dd2a499E765BCBE0035439345f48996892f
```

### Get transaction details

```sh
mvs-vm-cli tx TX_HASH
```

### Show information about a block

```sh
mvs-vm-cli block BLOCK_ID
```

**Parameters:**

- BLOCK_ID - id of a block (omit for `latest`)

### Show information about an address

```sj
mvs-vm-cli transaction ADDRESS_HASH
```

**Parameters:**

* ADDRESS_HASH - hash of the address

### Build from source

Clone this repo:

```sh
git clone https://github.com/mvs-org/metaverse-vm-cli
cd mvs-vm-cli
make install
# or just `make build` to build it into current directory
mvs-vm-cli help
```
