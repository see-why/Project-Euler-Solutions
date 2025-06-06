# Project Euler Solutions in Ruby

Collection of mathematical and programming problem solutions from Project Euler implemented in Ruby with optimized algorithms, detailing solutions for [problems 1-50](https://projecteuler.net/archives).

## Project Structure

```
.
├── project_euler/     # Solution implementations
├── tests/            # Test files
├── Gemfile           # Ruby dependencies
└── README.md         # This documentation
```

## Prerequisites

- Ruby 3.0 or later
- Bundler gem
- SimpleCov (for test coverage)
- Minitest (testing framework)

## Installation

1. Clone the repository:

```sh
git clone https://github.com/yourusername/project-euler-ruby.git
```

2. Navigate to project directory:

```sh
cd project-euler-ruby
```

3. Install dependencies:

```sh
bundle install
```

## Running Tests

Run all tests with coverage:

```sh
COVERAGE=true ruby -I. tests/**/*_test.rb
```

Run specific test:

```sh
ruby -I. tests/specific_test.rb
```

View test coverage report:

```sh
open coverage/index.html
```

## Available Solutions

| Problem | Description | Solution |
|---------|------------|----------|
| Amicable Numbers | Find sum of amicable numbers | ✅ |
| Distinct Powers | Calculate distinct powers | ✅ |
| Lattice Paths | Count possible paths | ✅ |
| Largest Product in Grid | Find largest product | ✅ |
| Maximum Path Sum | Find maximum path sum | ✅ |
| Names Scores | Calculate name scores | ✅ |
| Non-abundant Numbers | Find non-abundant sums | ✅ |
| Nth Digit Fibonacci | Find Fibonacci sequence | ✅ |
| Pandigital Products | Calculate pandigital products | ✅ |
| Power Sum Digits | Sum of power digits | ✅ |
| Quadratic Primes | Find quadratic formula | ✅ |
| Reciprocal Cycles | Find longest cycle | ✅ |
| *and more*... | Additional solutions | ✅ |

## Development

### Code Style

- Follow Ruby style guide
- Use frozen_string_literal comment
- Maintain 100% test coverage
- Include performance optimizations

### Adding New Solutions

1. Create solution in `project_euler/`:

```ruby
# frozen_string_literal: true

def your_solution(input)
  # Implementation
end
```

2. Add corresponding test:

```ruby
# frozen_string_literal: true
require 'minitest/autorun'
require_relative '../project_euler/your_solution'

class YourSolutionTest < Minitest::Test
  def test_solution
    assert_equal expected, your_solution(input)
  end
end
```

## Performance Testing

Benchmark your solutions:

```ruby
require 'benchmark'

time = Benchmark.measure do
  puts your_solution(input)
end
puts "Time: #{time.real} seconds"
```

## Contributing

1. Fork repository
2. Create feature branch:

```sh
git checkout -b solution/problem-name
```

3. Add solution and tests
4. Ensure all tests pass and coverage is 100%
5. Commit changes:

```sh
git commit -m 'Add solution for Problem X'
```

6. Push and create pull request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## CI/CD Status

![Ruby Tests](https://github.com/see-why/test-folder/actions/workflows/ci.yml/badge.svg)

## Documentation

- Each solution includes detailed comments
- Time complexity analysis provided
- Space complexity analysis provided
