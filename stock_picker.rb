def stock_picker(stock_prices)
   #Finds the maximum difference between two elements of an array, with the higher valued element having a higher index.
  n = stock_prices.length 
  
  days = [0, 0]
  max_profit = 0
  
  for i in (0...n) do 
    for j in (i...n) do
      profit = stock_prices[j] - stock_prices[i]
      if profit > max_profit
          max_profit = profit
          
         days = [i , j]
          
      end
  
    end
  end
  
  puts "The max profit is #{max_profit}. Buy on day #{days[0]} and sell on day #{days[1]}"
  
  
 
end


stock_picker([17,3,6,9,15,8,6,1,10])
