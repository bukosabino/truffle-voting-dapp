pragma solidity ^0.4.17;


contract Voting {

    struct Proposal {
        string title;
        uint voteCountPos;
        uint voteCountNeg;
        uint voteCountAbs;
        mapping (address => Voter) voters;
        address[] votersAddress;
    }

    struct Voter {
        uint value;
        bool voted;
    }

    Proposal[] public proposals;

    event CreatedProposalEvent();

    event CreatedVoteEvent();

    function getNumProposals() public view returns (uint) {
        return proposals.length;
    }

    function getProposal(uint proposalInt) public view returns (uint, string, uint, uint, uint, address[]) {
        if (proposals.length > 0) {
            return (proposalInt, proposals[proposalInt].title, proposals[proposalInt].voteCountPos,
                proposals[proposalInt].voteCountNeg, proposals[proposalInt].voteCountAbs,
                proposals[proposalInt].votersAddress);
        }
    }

    function addProposal(string title) public returns (bool) {
        Proposal memory proposal;
        CreatedProposalEvent();
        proposal.title = title;
        proposals.push(proposal);
        return true;
    }

    function vote(uint proposalInt, uint voteValue) public returns (bool) {
        if (proposals[proposalInt].voters[msg.sender].voted == false) { // check duplicate key
            require(voteValue == 1 || voteValue == 2 || voteValue == 3); // check voteValue

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
            CreatedVoteEvent();
            return true;
        } else {
            return false;
        }
    }

}
