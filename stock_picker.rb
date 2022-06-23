stock = [17,3,6,9,15,8,6,1,10]

def stock_pick(stock_prices)
  s = stock_prices
  mins = s.min(s.length/2)
  max = s.max(s.length/2)

  max.each do |maxi|
    mins.each do |mini|
      if s.index(maxi) > s.index(mini)
        return [s.index(mini), s.index(maxi)]
      end
    end
  end
end

p stock_pick(stock)

