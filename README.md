# Streetline

A ruby client for the [Streetline](http://www.streetline.com/) API. Currently only supporting the bulk `/ParkingDestinations` endpoint.

[![Gem Version](https://badge.fury.io/rb/streetline.png)](http://badge.fury.io/rb/streetline)
[![Code Climate](https://codeclimate.com/github/phildionne/streetline.png)](https://codeclimate.com/github/phildionne/streetline)
[![Coverage Status](https://coveralls.io/repos/phildionne/streetline/badge.png)](https://coveralls.io/r/phildionne/streetline)
[![Dependency Status](https://gemnasium.com/phildionne/streetline.png)](https://gemnasium.com/phildionne/streetline)
[![Build Status](https://travis-ci.org/phildionne/streetline.png)](https://travis-ci.org/phildionne/streetline)


## Configuration

Single token usage:

```ruby
Streetline.api_token = "1234"
```

Multiple tokens or multithreaded usage:

```ruby
client = Streetline::Client.new(api_token: "1234")
```

## Usage

### Parking Destinations

Returns all parking destinations:

```ruby
destinations = client.destinations
# => #<Array: ...>

destinations.first
# => { "DestinationID" => "...", "DestinationName" => "...", "Latitude" => "...", "Longitude" => "...", "TimeZone" => "...", "PaymentMethodsAccepted" => {}, "RateHighest" => "...", "RateLowest" => "....", "CurrencySymbol" => "..." }
```

# Contributing

1. Fork it
2. [Create a topic branch](http://learn.github.com/p/branching.html)
3. Add specs for your unimplemented modifications
4. Run `bundle exec rspec`. If specs pass, return to step 3.
5. Implement your modifications
6. Run `bundle exec rspec`. If specs fail, return to step 5.
7. Commit your changes and push
8. [Submit a pull request](http://help.github.com/send-pull-requests/)
9. Thank you!

# Author

[Philippe Dionne](http://phildionne.com)

# License

See [LICENSE](https://github.com/phildionne/streetline/blob/master/LICENSE)
