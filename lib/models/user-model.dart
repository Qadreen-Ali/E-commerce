import 'package:flutter/material.dart';
class  UserModel {
  final String uId;
  final String username;
  final String email;
  final String phone;
  final String userImg;
  final String userDeviceToken;
  final String street;
  final String country;
  final bool isAdmin;
  final bool isActive;
  final dynamic createdOn;

  UserModel({
    required this.uId,
    required this.country,
    required this.username,
    required this.email,
    required this.phone,
    required this.userDeviceToken,
    required this.userImg,
    required this.isActive,
    required this.isAdmin,
    required this.createdOn,
    required this.street,
  });

  // Serialize the usermodel instance to a jason Map
  Map<String, dynamic> toMap(){
    return {
      'uId': uId,
      'user': username,
      'email':email ,
      'phone': phone,
      'userImg': userImg ,
      'userDeviceToken':userDeviceToken ,
      'country': country,
      'isAdmin':isAdmin ,
      'isActive':isActive ,
      'createdOn': createdOn,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic>json){
    return UserModel(uId:json ["uId"],
        country: json["country"],
        username: json["username"],
        email: json["email"],
        phone: json["phone"],
        userDeviceToken:json ["userDeviceToken"],
        userImg: json["userImg"],
        isActive: json["isActive"],
        isAdmin:json ["isAdmin"],
        createdOn: json["createdOn"],
        street:json["street"].toString(),);
  }
}