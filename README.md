# MoneyValuer

This for converting currency. It will always give the present currency rate.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'money_valuer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install money_valuer

## Usage

```ruby
 MoneyValuer.check_rate(amount,from,to)
```
 * _amount_ - This for specify amount
 * _from_  - From which currency.It should be ISO currency code format.
 * _to_ -  To which currency format


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sobisunny/money_valuer.

