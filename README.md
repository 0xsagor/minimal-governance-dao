# Minimal Governance DAO

This repository provides a high-quality, streamlined governance framework for DAOs. It utilizes the OpenZeppelin Governance architecture to enable secure, transparent, and decentralized decision-making.

## Features
- **Token-Based Voting**: Uses an ERC-20 token with snapshots for fair voting power calculation.
- **Proposal Lifecycle**: Supports the full flow of Proposing, Voting, Quorum checking, and Execution.
- **Adjustable Parameters**: Easily configure voting delays, voting periods, and quorum requirements.
- **Flat Structure**: All core logic resides in the root directory for easy auditing.

## Architecture
1. **GovernanceToken**: An ERC20 token with `ERC20Votes` extension to track historical voting power.
2. **GovernorContract**: The logic engine that manages proposals and counts votes.



## Getting Started
1. Install Foundry.
2. Compile: `forge build`
3. Test: `forge test`
