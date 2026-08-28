# Core transformation logic
def code_for(number)
  return nil unless number.is_a?(Integer)
  return 0 if number.zero?

  case
    when (number % 15).zero? then 'CracklePop'
    when (number % 3).zero?  then 'Crackle'
    when (number % 5).zero?  then 'Pop'
  else number
  end
end

# Main execution loop
def crackle_pop(first = 1, last = 100)
  return [] if first > last

  results = []
  (first..last).each do |number|
    result = code_for(number)
    puts result
    results << result
  end

  results
end