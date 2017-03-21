def get_grade(score1, score2, score3)
  average_score = (score1 + score2 + score3) / 3.0
  case
  when average_score >= 90 && average_score <= 100
    'A'
  when average_score >= 80 && average_score < 90
    'B'
  when average_score >= 70 && average_score < 80
    'C'
  when average_score >= 60 && average_score < 70
    'D'
  when average_score >= 0 && average_score < 60
    'F'
  end
end

# Test cases
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
