# ChicagoEmployees

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chicago_employees'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chicago_employees

## Usage

To get all employees, use:

    ChicagoEmployees.all

To filter by specific attributes, use the `where` command:

    ChicagoEmployees.where(:department => "WATER MGMNT", :employee_annual_salary => "70408.00")


## Contributing

1. Fork it ( https://github.com/[my-github-username]/chicago_employees/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
