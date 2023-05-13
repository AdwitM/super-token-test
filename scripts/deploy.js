const { ethers } = require("hardhat");

async function main() {

  const PureSuperToken = await ethers.getContractFactory("PureSuperToken");
  const initialSupply = ethers.utils.parseEther("100"); 
  const pureSuperToken = await PureSuperToken.deploy(
    "0xA25dbEa94C5824892006b30a629213E7Bf238624",
    "SuperToken",
    "SUP",
    "0x421B35e07B9d3Cc08f6780A01E5fEe7B8aeFD13E",
    initialSupply
  );

  // Wait for the contract to be mined
  await pureSuperToken.deployed();

  console.log("PureSuperToken deployed to:", pureSuperToken.address);
}

// Run the deploy function
main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });