def get_grade(score_1, score_2, score_3)
  total = (score_1 + score_2 + score_3) / 3.0

  case
  when total >= 90 && total <= 100 then 'A'
  when total >= 80 && total < 90 then 'B'
  when total >= 70 && total < 80 then 'C'
  when total >= 60 && total < 70 then 'D'
  when total >= 0  && total < 60 then 'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
