# Dog Breeds API - Dart/Flutter Client

Dog Breeds is a simple tool for getting information about dog breeds. It returns information such as breed name, temperament, lifespan, and more.

[![pub package](https://img.shields.io/pub/v/apiverve_dogbreeds.svg)](https://pub.dev/packages/apiverve_dogbreeds)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Dog Breeds API](https://apiverve.com/marketplace/dogbreeds?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_dogbreeds: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_dogbreeds/apiverve_dogbreeds.dart';

void main() async {
  final client = DogbreedsClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'breed': 'beagle'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Dog Breeds API](https://apiverve.com/marketplace/dogbreeds?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/dogbreeds](https://docs.apiverve.com/ref/dogbreeds?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
