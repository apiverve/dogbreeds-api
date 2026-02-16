/// Response models for the Dog Breeds API.

/// API Response wrapper.
class DogbreedsResponse {
  final String status;
  final dynamic error;
  final DogbreedsData? data;

  DogbreedsResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory DogbreedsResponse.fromJson(Map<String, dynamic> json) => DogbreedsResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? DogbreedsData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Dog Breeds API.

class DogbreedsData {
  String? breed;
  int? foundCount;
  List<DogbreedsDataFoundbreedsItem>? foundBreeds;

  DogbreedsData({
    this.breed,
    this.foundCount,
    this.foundBreeds,
  });

  factory DogbreedsData.fromJson(Map<String, dynamic> json) => DogbreedsData(
      breed: json['breed'],
      foundCount: json['foundCount'],
      foundBreeds: (json['foundBreeds'] as List?)?.map((e) => DogbreedsDataFoundbreedsItem.fromJson(e)).toList(),
    );
}

class DogbreedsDataFoundbreedsItem {
  String? name;
  DogbreedsDataFoundbreedsItemWeight? weight;
  DogbreedsDataFoundbreedsItemHeight? height;
  String? bredFor;
  String? group;
  DogbreedsDataFoundbreedsItemLifeSpan? lifeSpan;
  List<String>? traits;

  DogbreedsDataFoundbreedsItem({
    this.name,
    this.weight,
    this.height,
    this.bredFor,
    this.group,
    this.lifeSpan,
    this.traits,
  });

  factory DogbreedsDataFoundbreedsItem.fromJson(Map<String, dynamic> json) => DogbreedsDataFoundbreedsItem(
      name: json['name'],
      weight: json['weight'] != null ? DogbreedsDataFoundbreedsItemWeight.fromJson(json['weight']) : null,
      height: json['height'] != null ? DogbreedsDataFoundbreedsItemHeight.fromJson(json['height']) : null,
      bredFor: json['bredFor'],
      group: json['group'],
      lifeSpan: json['life_span'] != null ? DogbreedsDataFoundbreedsItemLifeSpan.fromJson(json['life_span']) : null,
      traits: (json['traits'] as List?)?.cast<String>(),
    );
}

class DogbreedsDataFoundbreedsItemWeight {
  int? lowerLbs;
  int? upperLbs;

  DogbreedsDataFoundbreedsItemWeight({
    this.lowerLbs,
    this.upperLbs,
  });

  factory DogbreedsDataFoundbreedsItemWeight.fromJson(Map<String, dynamic> json) => DogbreedsDataFoundbreedsItemWeight(
      lowerLbs: json['lowerLbs'],
      upperLbs: json['upperLbs'],
    );
}

class DogbreedsDataFoundbreedsItemHeight {
  int? lowerInches;
  int? upperInches;

  DogbreedsDataFoundbreedsItemHeight({
    this.lowerInches,
    this.upperInches,
  });

  factory DogbreedsDataFoundbreedsItemHeight.fromJson(Map<String, dynamic> json) => DogbreedsDataFoundbreedsItemHeight(
      lowerInches: json['lowerInches'],
      upperInches: json['upperInches'],
    );
}

class DogbreedsDataFoundbreedsItemLifeSpan {
  int? lowerYears;
  int? upperYears;

  DogbreedsDataFoundbreedsItemLifeSpan({
    this.lowerYears,
    this.upperYears,
  });

  factory DogbreedsDataFoundbreedsItemLifeSpan.fromJson(Map<String, dynamic> json) => DogbreedsDataFoundbreedsItemLifeSpan(
      lowerYears: json['lowerYears'],
      upperYears: json['upperYears'],
    );
}

class DogbreedsRequest {
  String breed;

  DogbreedsRequest({
    required this.breed,
  });

  Map<String, dynamic> toJson() => {
      'breed': breed,
    };
}
