import { ethers } from 'hardhat'

async function main() {
  const whiteListContract = await ethers.getContractFactory('Whitelist')

  const deployedWhitelistContract = await whiteListContract.deploy(10)

  console.log('Whitelist contract address: ', deployedWhitelistContract.address)
}

main().catch((error) => {
  console.error(error)
  process.exitCode = 1
})
