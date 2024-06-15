class Phone {
  String? phoneNumber;

  Phone({this.phoneNumber});

  factory Phone.fromJson(Map<String, dynamic> json) {
    return Phone(phoneNumber: json['phoneNumber'] as String?);
  }

  Map<String, dynamic> toJson() {
    return {if (phoneNumber != null) 'phoneNumber': phoneNumber};
  }
}
