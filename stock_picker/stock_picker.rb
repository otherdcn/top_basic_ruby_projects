require 'pry-byebug'

def stock_picker(prices)
  greatest_profit_margin = {
    buy_on: 0,
    sell_on: 0,
    profit_margin: 0
  }

  for buy_item in 0...prices.size # iterate over when to buy
    for sell_item in buy_item...prices.size # iterate over when to sell
      if (prices[sell_item] - prices[buy_item]) > greatest_profit_margin[:profit_margin]
        greatest_profit_margin[:profit_margin] = prices[sell_item] - prices[buy_item]
        greatest_profit_margin[:buy_on] = buy_item
        greatest_profit_margin[:sell_on] = sell_item
      end
    end
  end

  [greatest_profit_margin[:buy_on],greatest_profit_margin[:sell_on]]
end

week_one = stock_picker([17,3,6,9,15,8,6,1,10])
week_two = stock_picker([32,76,22,55,22,2,34,1])
week_three = stock_picker([33,23,1,2,7,8,24,2,4])

