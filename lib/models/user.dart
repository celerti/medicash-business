import 'package:dashboard/models/address.dart';
import 'package:dashboard/models/phone.dart';

class User {
  String? id;
  String? fullName;
  String? email;
  String? userName;
  String? password;
  Address? address;
  Phone? phone;
  DateTime? createdAt;
  DateTime? updatedAt;

  User({this.userName,
  this.fullName,
  this.email,
  this.password,
  this.id,
  this.address,
  this.phone,
  this.createdAt,
  this.updatedAt});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String?,
      userName: json['username'] as String?,
      fullName: json['fullname'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      address: Address.fromJson(json['address']),
      phone: Phone.fromJson(json['phone']),
      createdAt: json['created_at'] as DateTime?,
      updatedAt: json['updated_at'] as DateTime?
    );
  }

  Map<String, dynamic> toJson() {
    // only fields required to DTO
    return {
      'userName': userName,
      'fullName': fullName,
      'email': email,
      'passWord': password,
      'address': address?.toJson(),
      'phone': phone?.toJson(),
    };
  }
}