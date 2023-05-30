// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.7.5;
pragma abicoder v2;

import '@pancakeswap/v3-periphery/contracts/interfaces/ISelfPermit.sol';

import 'https://github.com/N1KURA/Pan/blob/main/IV2SwapRouter.sol';
import 'https://github.com/N1KURA/Pan/blob/main/IV3SwapRouter.sol';
import 'https://github.com/N1KURA/Pan/blob/main/IStableSwapRouter.sol';
import 'https://github.com/N1KURA/Pan/blob/main/IApproveAndCall.sol';
import 'https://github.com/N1KURA/Pan/blob/main/IMulticallExtended.sol';

/// @title Router token swapping functionality
interface ISmartRouter is IV2SwapRouter, IV3SwapRouter, IStableSwapRouter, IApproveAndCall, IMulticallExtended, ISelfPermit {

}