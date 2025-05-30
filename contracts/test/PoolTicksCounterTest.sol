// SPDX-License-Identifier: GPL-2.0-or-later
import '@synthra-swap/v3-core/contracts/interfaces/ISynthraV3Pool.sol';

pragma solidity >=0.6.0;

import '../libraries/PoolTicksCounter.sol';

contract PoolTicksCounterTest {
    using PoolTicksCounter for ISynthraV3Pool;

    function countInitializedTicksCrossed(
        ISynthraV3Pool pool,
        int24 tickBefore,
        int24 tickAfter
    ) external view returns (uint32 initializedTicksCrossed) {
        return pool.countInitializedTicksCrossed(tickBefore, tickAfter);
    }
}
