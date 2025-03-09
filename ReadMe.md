# Project Euler Solutions in Ruby

Collection of mathematical and programming problem solutions from Project Euler implemented in Ruby.

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

Run all tests:
```sh
ruby -I. tests/**/*_test.rb
```

Run specific test:
```sh
ruby -I. tests/specific_test.rb
```

## Available Solutions

- Amicable Numbers
- Distinct Powers
- Lattice Paths
- Largest Product in Grid
- Maximum Path Sum
- Names Scores
- Non-abundant Numbers
- Nth Digit Fibonacci
- Pandigital Products
- Power Sum Digits
- Quadratic Primes
- Reciprocal Cycles

## Development

### Adding New Solutions

1. Create solution in `project_euler/`:
```ruby
# filepath: project_euler/your_solution.rb
def your_solution(input)
  # Implementation
end
```

2. Add corresponding test:
```ruby
# filepath: tests/your_solution_test.rb
require 'minitest/autorun'
require_relative '../project_euler/your_solution'

class YourSolutionTest < Minitest::Test
  def test_solution
    assert_equal expected, your_solution(input)
  end
end
```

## Contributing

1. Fork repository
2. Create feature branch:
```sh
git checkout -b solution/problem-name
```

3. Add solution and tests
4. Commit changes:
```sh
git commit -m 'Add solution for Problem X'
```

5. Push and create pull request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## GitHub Actions

![Ruby Tests](https://github.com/see-why/test-folder/actions/workflows/ci.yml/badge.svg)