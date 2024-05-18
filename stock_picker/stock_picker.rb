require 'pry-byebug'

def stock_picker(daily_stock_prices)
  stock_calculations = {}
  daily_stock_prices.each_with_index do |stock_price,day|
    for i in daily_stock_prices[day..daily_stock_prices.size]
      stock_calculations["calc_" + day.to_s + daily_stock_prices.find_index(i).to_s] = {
        buy: day,
        sell: daily_stock_prices.find_index(i),
        profit: i - stock_price
      }
    end
  end

  greatest_profit_margin = nil
  max_profit_value = nil

  stock_calculations.each do |calc,results|
    if max_profit_value.nil? || results[:profit] > max_profit_value
      greatest_profit_margin = results
      max_profit_value = results[:profit]
    end
  end

  binding.pry
  [greatest_profit_margin[:buy],greatest_profit_margin[:sell]]
end

binding.pry
week_one = stock_picker([17,3,6,9,15,8,6,1,10])
week_two = stock_picker([32,76,22,55,22,2,34,1])
week_three = stock_picker([33,23,1,2,7,8,24,2,4])

