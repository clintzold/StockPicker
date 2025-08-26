#Stock Picker Program

def stock_picker(array)
  profit_index = {}#{Profit => [buy_index, sell_index], etc...}
  array.each_with_index do |buy_number, buy_index| 
    #Passes each number through every iteration of original array
    array.each_with_index do |sell_number, sell_index|
      #Checks for number's position before running calculation(no going back in time to get rich!)
      if buy_index < sell_index
        profit = sell_number - buy_number
        #Stores profit values and their associated value indexes in a hash for later comparisons
        if profit > 0
          profit_index[profit] = [buy_index, sell_index]
        end
      end
    end
  end

  #Finds the highest profit margin, and returns the buy and sell index as well as profits in a string
  buy_sell = profit_index.sort_by {|key, value| key}.last
  highest_profit = buy_sell[0]
  buy = buy_sell[1][0]
  sell = buy_sell[1][1]
  puts "Buy at $#{array[buy]} and sell at $#{array[sell]} for a profit of $#{highest_profit}."
  return buy_sell[1]

end


stock_picker([17,3,6,9,15,8,6,1,110])
