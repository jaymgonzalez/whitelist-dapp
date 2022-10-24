import '@nomicfoundation/hardhat-toolbox'
import 'dotenv/config'

const GOERLI_RPC_URL = process.env.GOERLI_RPC_URL
const PRIVATE_KEY = process.env.PRIVATE_KEY

const config = {
  solidity: '0.8.9',
  networks: {
    goerli: {
      url: GOERLI_RPC_URL,
      accounts: [PRIVATE_KEY],
    },
  },
}

export default config
