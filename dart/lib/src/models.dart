/// Response models for the Dog Breeds API.

/// API Response wrapper.
class DogbreedsResponse {
  final String status;
  final dynamic error;
  final DogbreedsData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  DogbreedsResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory DogbreedsResponse.fromJson(Map<String, dynamic> json) => DogbreedsResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? DogbreedsData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Dog Breeds API.

class DogbreedsData {
  String? breed;
  num? foundCount;
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
  num? lowerLbs;
  num? upperLbs;

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
  num? lowerInches;
  num? upperInches;

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
  num? lowerYears;
  num? upperYears;

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
