import 'package:dashboard/models/address.dart';
import 'package:dashboard/models/phone.dart';

class User {
  String? id;
  String? fullName;
  String? email;
  String? userName;
  String? passWord;
  Address? address;
  Phone? phone;
  DateTime? createdAt;
  DateTime? updatedAt;

  User({this.userName,
  this.fullName,
  this.email,
  this.passWord,
  this.id,
  this.address,
  this.phone,
  this.createdAt,
  this.updatedAt});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      passWord: json['passWord'] as String?,
      address: Address.fromJson(json['address']),
      phone: Phone.fromJson(json['phone']),
      createdAt: DateTime.parse(json['createdAt']) as DateTime?,
      // updatedAt: json['updatedAt'] ?? DateTime.parse(json['updatedAt']) as DateTime?
    );
  }

  Map<String, dynamic> toJson() {
    // only fields required to DTO
    return {
      'userName': userName,
      'fullName': fullName,
      'email': email,
      'passWord': passWord,
      'address': address?.toJson(),
      'phone': phone?.toJson(),
    };
  }
}