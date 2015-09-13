# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  if a == 0 || b == 0 || c == 0
  	false
  elsif a + b <= c || b + c <= a || a + c <= b
  	false
  else
  	true
  end
end