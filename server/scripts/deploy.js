const { ethers } = require('hardhat')

async function main() {
	const WhitelistDapp = await ethers.getContractFactory('WhitelistDapp')
	const whitelist = await WhitelistDapp.deploy(10)

	await whitelist.deployed()

	console.log('Whitelist with 1 ETH deployed to:', whitelist.address)
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
	console.error(error)
	process.exitCode = 1
})
