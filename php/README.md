# Dog Breeds API - PHP Package

Dog Breeds is a simple tool for getting information about dog breeds. It returns information such as breed name, temperament, lifespan, and more.

## Installation

Install via Composer:

```bash
composer require apiverve/dogbreeds
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Dogbreeds\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['breed' => 'beagle']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Dogbreeds\Client;
use APIVerve\Dogbreeds\Exceptions\APIException;
use APIVerve\Dogbreeds\Exceptions\ValidationException;

try {
    $response = $client->execute(['breed' => 'beagle']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/dogbreeds?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/dogbreeds?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/dogbreeds?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
