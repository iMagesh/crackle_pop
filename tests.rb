# --- Lightweight Vanilla Ruby Test Runner with Summary Metrics ---

require_relative 'crackle_pop'

@total_tests = 0
@passed_tests = 0
@failed_tests = 0

def assert_equal(expected, actual, test_name)
  @total_tests += 1

  if expected == actual
    @passed_tests += 1
    print "."
  else
    @failed_tests += 1
    puts "\nFAIL: #{test_name}"
    puts "  Expected: #{expected.inspect}"
    puts "  Got:      #{actual.inspect}"
  end
end

def run_tests
  puts "Running tests..."

  # Core Logic Tests
  assert_equal 'Crackle', code_for(3), 'returns Crackle for multiples of 3'
  assert_equal 'Pop', code_for(5), 'returns Pop for multiples of 5'
  assert_equal 'CracklePop', code_for(15), 'returns CracklePop for multiples of 15'
  assert_equal 7, code_for(7), 'returns number for standard inputs'

  # Edge Cases
  assert_equal 0, code_for(0), 'handles zero correctly'
  assert_equal 'CracklePop', code_for(-15), 'handles negative multiples'
  assert_equal nil, code_for('15'), 'returns nil for non-integers'

  # Integration Tests
  results = crackle_pop(1, 15)
  assert_equal 15, results.length, 'generates correct range size'
  assert_equal 'CracklePop', results.last, 'evaluates last item correctly'

  # Print Summary Metrics
  puts "\n\n--- Test Results ---"
  puts "Total:  #{@total_tests}"
  puts "Passed: #{@passed_tests}"
  puts "Failed: #{@failed_tests}"
end

# Run the test suite if executing this file directly
run_tests if __FILE__ == $0