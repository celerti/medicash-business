class Address {
  String? city;
  String? streetAddress;
  String? complement;
  String? addressNumber;
  String? state;
  String? zipCode;
  String? country;

  Address({this.city,
  this.streetAddress,
  this.complement,
  this.addressNumber,
  this.state,
  this.zipCode,
  this.country});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      city: json['city'] as String?,
      streetAddress: json['streetAddress'] as String?,
      complement: json['complement'] as String?,
      addressNumber: json['addressNumber'] as String?,
      state: json['state'] as String?,
      zipCode: json['zipCode'] as String?,
      country: json['country'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'city': city,
      'streetAddress': streetAddress,
      'complement': complement,
      'addressNumber': addressNumber,
      'state': state,
      'zipCode': zipCode,
      'country': country
    };
  }
}