const Helloworld = artifacts.require("Helloworld");   // migrations dosyasından aldık
const Whatsapp = artifacts.require("Whatsapp");

contract("Helloworld", accounts => {
    it("constructor should set the message correctly", async  ()  =>{
        let instance = await Helloworld.deployed();
        let message = await instance.message();
        assert.equal(message, "Hello world constructor"); // bu ikisinin eşit olduunu iddaa etmek istiyoruz.
    })

    it("owner should be accounts[0]", async () => {
        let instance = await Whatsapp.deployed();
        let owner = await instance.owner();  // sözleşmenin konuşlandırılmış örneğini almamız gerekiyor
        assert.equal(owner, accounts[0]);  // sahibin hesaplara eşit olmasını iddaa ediyoruz.
    })



    /*
contract("Helloworld", accounts => {
    //write the test
})

contract("Helloworld", accounts => { // herbiri için bu ifadelerden birden fazlasına sahip olabilir.
    //write the test
})
*/

})