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

test_data = [[17,3,6,9,15,8,6,1,10], [32,76,22,55,22,2,34,1], [33,23,1,2,7,8,24,2,4]]

test_data.each do |stocks|
  buy_on, sell_on = stock_picker(stocks)
  puts "For the following stocks: #{stocks.join(", ")}"
  print "Pick #{[buy_on, sell_on]} - "
  puts "for a profit of $#{stocks[sell_on]} - $#{stocks[buy_on]} = $#{stocks[sell_on] - stocks[buy_on]}\n\n"
end
