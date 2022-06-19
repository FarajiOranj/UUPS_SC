const { ethers, upgrades } = require("hardhat");

const PROXY = "0x41c9492A6Ba783d33e89b7726cE08598ec12d426";

async function main() {
 const fullTk = await ethers.getContractFactory("fullTK");
 console.log("Upgrading Token SC...");
 await upgrades.upgradeProxy(PROXY, fullTk);
 console.log("Pizza upgraded successfully");
}

main();