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
}