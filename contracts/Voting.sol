pragma solidity ^0.4.17;


contract Voting {

    struct Voter {
        uint value;
        bool voted;
    }

    struct Proposal {
        string title;
        uint voteCountPos; // vote number accumulated
        uint voteCountNeg; // vote number accumulated
        uint voteCountAbs; // vote number accumulated
        mapping (address => Voter) voters;
        address[] votersAddress;
    }

    Proposal[] public proposals;

    function vote(uint proposalInt, uint voteValue) public returns (bool) {

        if (proposals[proposalInt].voters[msg.sender].voted == true) {
            return false;
        } // check duplicate key

        require(voteValue == 1 || voteValue == 2 || voteValue == 3); // voteValue not valid

        if (voteValue == 1) {
            proposals[proposalInt].voteCountPos += 1;
        } else if (voteValue == 2) {
            proposals[proposalInt].voteCountNeg += 1;
        } else {
            proposals[proposalInt].voteCountAbs += 1;
        }

        proposals[proposalInt].voters[msg.sender].value = voteValue;
        proposals[proposalInt].voters[msg.sender].voted = true;
        proposals[proposalInt].votersAddress.push(msg.sender);

        return true;
    }

    function getProposal(uint proposalInt) public view returns (uint, string, uint, uint, uint, address[]) {
        if (proposals.length > 0) {
            return (proposalInt, proposals[proposalInt].title, proposals[proposalInt].voteCountPos,
                proposals[proposalInt].voteCountNeg, proposals[proposalInt].voteCountAbs,
                proposals[proposalInt].votersAddress);
        }
    }

    function getNumProposals() public view returns (uint) {
        return proposals.length;
    }

    function addProposal(string title) public returns (bool) {
        Proposal memory proposal;
        proposal.title = title;
        proposals.push(proposal);
        return true;
    }

}
