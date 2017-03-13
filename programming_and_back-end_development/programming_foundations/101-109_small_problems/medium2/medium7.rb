require 'date'

def friday_13th?(year)
  count = 0
  (Date.new(year, 01, 01)..Date.new(year, 12, 31)).each do |date|
    count += 1 if date.friday? && date.day == 13
  end
  count
end

p friday_13th?(2015) == 3
p friday_13th?(1986) == 1
p friday_13th?(2019) == 2
