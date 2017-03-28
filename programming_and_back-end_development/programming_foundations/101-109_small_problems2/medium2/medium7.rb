def friday_13th?(year)
  count = 0
  1.upto(12) do |month|
    count += 1 if Time.new(year, month, 13).friday?
  end
  count
end

# Alternative solution
require 'date'

def friday_13th?(year)
  unlucky_count = 0
  thirteenth = Date.new(year, 1, 13)
  12.times do
    unlucky_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_count
end

# Alternative solution 2
def friday_13th?(year)
  (1..12).select { |month| Time.new(year, month, 13).friday? }.size
end

# Alternative solution 3
def friday_13th?(year)
  (1..12).count { |month| Time.new(year, month, 13).friday? }
end

# Test cases
p friday_13th?(2015) == 3
p friday_13th?(1986) == 1
p friday_13th?(2019) == 2
