import { abi as POOL_ABI } from '@synthra-swap/v3-core/artifacts/contracts/SynthraV3Pool.sol/SynthraV3Pool.json'
import { Contract, Wallet } from 'ethers'
import { ISynthraV3Pool } from '../../typechain'

export default function poolAtAddress(address: string, wallet: Wallet): ISynthraV3Pool {
  return new Contract(address, POOL_ABI, wallet) as ISynthraV3Pool
}
