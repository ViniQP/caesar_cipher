def stock_picker(stocks)
  min_stock = stocks[0]
  min_stock_index = 0
  profit = 0
  best_days = []

  stocks.each_with_index do |stock, index|
    if stock < min_stock
      min_stock = stock
      min_stock_index = index
    end

    if (stock - min_stock) > profit
      profit = stock - min_stock
      best_days = [min_stock_index, index]
    end
  end

  best_days
end

p stock_picker([17,3,6,9,15,8,6,10,1])

