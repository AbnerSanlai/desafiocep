class CepModel {
  CepModel({
    required this.cep,
    required this.state,
    required this.city,
    required this.neighborhood,
    required this.street,
    required this.service,
    required this.location,
  });
  late final String cep;
  late final String state;
  late final String city;
  late final String neighborhood;
  late final String street;
  late final String service;
  late final Location location;

  CepModel.fromJson(Map<String, dynamic> json) {
    cep = json['cep'];
    state = json['state'];
    city = json['city'];
    neighborhood = json['neighborhood'];
    street = json['street'];
    service = json['service'];
    location = Location.fromJson(json['location']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['cep'] = cep;
    data['state'] = state;
    data['city'] = city;
    data['neighborhood'] = neighborhood;
    data['street'] = street;
    data['service'] = service;
    data['location'] = location.toJson();
    return data;
  }
}

class Location {
  Location({
    required this.type,
    required this.coordinates,
  });
  late final String type;
  late final Coordinates coordinates;

  Location.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    coordinates = Coordinates.fromJson(json['coordinates']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['coordinates'] = coordinates.toJson();
    return data;
  }
}

class Coordinates {
  Coordinates({
    required this.longitude,
    required this.latitude,
  });
  late final String longitude;
  late final String latitude;

  Coordinates.fromJson(Map<String, dynamic> json) {
    longitude = json['longitude'];
    latitude = json['latitude'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    return data;
  }
}
