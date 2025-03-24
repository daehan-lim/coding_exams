class Solution {
int maxProfit(List<int> prices) {
  if (prices.length <= 1) {
    return 0;
  }
  int buyDay = 0;
  int sellDay = -1;
  int maxProfit = 0;
  for (var i = 1; i < prices.length; i++) {
    var sell = sellDay != -1 ? prices[sellDay] : -999999;
    if (prices[i] > prices[buyDay] && prices[i] > sell) {
      sellDay = i;
      sell == prices[sellDay];
    } else if (prices[i] < prices[buyDay]) {
      buyDay = i;
    }
    maxProfit = sell - prices[buyDay];
  }
  return maxProfit > 0 ? maxProfit : 0;
}
}
