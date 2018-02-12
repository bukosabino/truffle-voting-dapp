var Voting = artifacts.require("Voting");

contract('Voting', function(accounts) {

  it("Add a proposal", function() {
    return Voting.deployed().then(function(instance) {
      return instance.addProposal.call('Hello World Proposal');
    }).then(function(data) {
      assert.equal(data, true, "Prueba no superada");
    });
  });

  it("Vote a proposal", function() {
    var votingInstance;
    return web3.eth.getAccounts(function(error, accounts) {
      if (error) {
        console.log(error);
      }
      var account = accounts[0];
      return Voting.deployed().then(function(instance) {
        votingInstance = instance;
        return votingInstance.addProposal.call('Hello World Proposal');
      }).then(function(data) {
        return votingInstance.vote.call(0, 1, {from: account});
      }).then(function(data) {
        assert.equal(data, true, "Prueba no superada");
      });
    });
  });

});
