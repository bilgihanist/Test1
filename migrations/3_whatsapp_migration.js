const Whatsapp = artifacts.require("Whatsapp");

module.exports = function(deployer) {
    deployer.deploy(Whatsapp,"Whatsapp mann");
};
