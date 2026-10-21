# Dog Breeds API - Ruby Gem

Dog Breeds searches canine breed records by name to return official breed names and kennel club group classifications. Paid plans add height, weight, lifespan, traits, and original breeding purposes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_dogbreeds'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_dogbreeds
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_dogbreeds'

# Initialize the client
client = APIVerve::Dogbreeds::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ breed: "beagle" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ breed: "beagle" })
  puts response["data"]
rescue APIVerve::Dogbreeds::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Dogbreeds::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Dogbreeds::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "breed": "beagle",
    "foundCount": 1,
    "foundBreeds": [
      {
        "name": "Beagle",
        "weight": {
          "lowerLbs": 20,
          "upperLbs": 35
        },
        "height": {
          "lowerInches": 13,
          "upperInches": 15
        },
        "bredFor": "rabbit, hare hunting",
        "group": "hound",
        "life_span": {
          "lowerYears": 13,
          "upperYears": 16
        },
        "traits": [
          "amiable",
          "even tempered",
          "excitable",
          "determined",
          "gentle",
          "intelligent"
        ]
      }
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/dogbreeds?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/dogbreeds?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/dogbreeds?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
