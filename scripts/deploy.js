const { ethers } = require("hardhat");

async function main(){

    const HellowWorld = await ethers.getContractFactory("HelloWorld");

    const hello_world = await HellowWorld.deploy("Hi, Hello World!");
    
    console.log("Contract was deployed to address: ", hello_world.address);

}

main()
    .then(()=> process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });