import UsdcUsdtSwapPair from "UsdcUsdtSwapPair"

pub struct Result {
  pub let usdcUSDCAmount: UFix64
  pub let usdcUSDTAmount: UFix64

  init(
    usdcUSDCAmount: UFix64,
    usdcUSDTAmount: UFix64,
  ) {
    self.usdcUSDCAmount = usdcUSDCAmount
    self.usdcUSDTAmount = usdcUSDTAmount
  }
}

pub fun main(): Result {
  let usdcPoolAmounts = UsdcUsdtSwapPair.getPoolAmounts()
  let usdcUSDCAmount = usdcPoolAmounts.token1Amount
  let usdcUSDTAmount = usdcPoolAmounts.token2Amount

  return Result(
    usdcUSDCAmount: usdcUSDCAmount,
    usdcUSDTAmount: usdcUSDTAmount,
  )
}