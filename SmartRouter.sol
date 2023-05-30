// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity =0.7.6;
pragma abicoder v2;

import '@pancakeswap/v3-periphery/contracts/base/SelfPermit.sol';
import '@pancakeswap/v3-periphery/contracts/base/PeripheryImmutableState.sol';

import 'https://github.com/N1KURA/Pan/blob/main/ISmartRouter.sol';
import 'https://github.com/N1KURA/Pan/blob/main/V2SwapRouter.sol';
import 'https://github.com/N1KURA/Pan/blob/main/V3SwapRouter.sol';
import 'https://github.com/N1KURA/Pan/blob/main/StableSwapRouter.sol';
import 'https://github.com/N1KURA/Pan/blob/main/ApproveAndCall.sol';
import 'https://github.com/N1KURA/Pan/blob/main/MulticallExtended.sol';

/// @title Pancake Smart Router
contract SmartRouter is ISmartRouter, V2SwapRouter, V3SwapRouter, StableSwapRouter, ApproveAndCall, MulticallExtended, SelfPermit {
    constructor(
        address _factoryV2,
        address _deployer,
        address _factoryV3,
        address _positionManager,
        address _stableFactory,
        address _stableInfo,
        address _WETH9
    ) ImmutableState(_factoryV2, _positionManager) PeripheryImmutableState(_deployer, _factoryV3, _WETH9) StableSwapRouter(_stableFactory, _stableInfo) {}
}