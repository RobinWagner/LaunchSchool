s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect
# => ["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]
puts s.split(',').inspect
# => ["abc def ghi", "jkl mno pqr", "stu vwx yz"]
puts s.split(',', 2).inspect
# => ["abc def ghi", "jkl mno pqr,stu vwx yz"]

# Ruby docs String#split: https://ruby-doc.org/core-2.4.0/String.html#method-i-split
# Ruby docs Object#inspect: http://ruby-doc.org/core-2.4.0/Object.html#method-i-inspect
