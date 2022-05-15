class CepModelErro {
  CepModelErro();
  late final String name;
  late final String message;
  late final String type;
  late final List<Errors> errors;

  CepModelErro.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    message = json['message'];
    type = json['type'];
    errors = List.from(json['errors']).map((e) => Errors.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['message'] = message;
    _data['type'] = type;
    _data['errors'] = errors.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Errors {
  Errors({
    required this.name,
    required this.message,
    required this.service,
  });
  late final String name;
  late final String message;
  late final String service;

  Errors.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    message = json['message'];
    service = json['service'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['message'] = message;
    _data['service'] = service;
    return _data;
  }
}
