const { ethers, upgrades } = require("hardhat");

async function main() {
 const TK721 = await ethers.getContractFactory("TK721");

 console.log("Deploying TK721...");

 const tk721 = await upgrades.deployProxy(TK721, {
   initializer: "initialize",
 });
 await tk721.deployed();

 console.log("tk721 deployed to:", tk721.address);
}

main();