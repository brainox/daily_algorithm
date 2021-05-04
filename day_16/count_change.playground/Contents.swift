import UIKit

/*Task
 
 Write a function that counts how many different ways you can make change for an amount of money given an array of coin denominations. For example, there are 3 ways to give change for 4 if you have coins with denomination 1 and 2:
 1+1+1+1, 1+1+2, 2+2.

 The order of coins does not matter:

 1+1+2 == 2+1+1

 Also, assume that you have an infinite ammount of coins.

 Your function should take an amount to change and an array of unique denominations for the coins:
  

 Specifications

 countChange(money, coins)

 Parameters

 money: Int - Number to make change for
  
 coins: Array<Int> - Array of denominations
  
 Return Value

 Int - Number of ways change can be made


  

 Examples

 money    coins    Return Value

 10    [5,2,3]    4*/


func countChange(_ money: Int,_ coins: Array<Int>) -> Int {
 guard money > 0 else{
   return 1
 }
  var sum = Array(repeating: 0, count: money+1)
  sum[0] = 1
  for coin in coins{
    for i in 1...money{
      if i >= coin {
        sum[i] += sum[i - coin]
      }
    }
  }
  return sum[money]
}


