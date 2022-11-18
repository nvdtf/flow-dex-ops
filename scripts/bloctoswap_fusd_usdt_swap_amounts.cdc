import FusdUsdtSwapPair from "FusdUsdtSwapPair"

pub struct Result {
  pub let fusdFUSDAmount: UFix64
  pub let fusdUSDTAmount: UFix64

  init(
    fusdFUSDAmount: UFix64,
    fusdUSDTAmount: UFix64,
  ) {
    self.fusdFUSDAmount = fusdFUSDAmount
    self.fusdUSDTAmount = fusdUSDTAmount
  }
}

pub fun main(): Result {
  let fusdPoolAmounts = FusdUsdtSwapPair.getPoolAmounts()
  let fusdFUSDAmount = fusdPoolAmounts.token1Amount
  let fusdUSDTAmount = fusdPoolAmounts.token2Amount

  return Result(
    fusdFUSDAmount: fusdFUSDAmount,
    fusdUSDTAmount: fusdUSDTAmount,
  )
}