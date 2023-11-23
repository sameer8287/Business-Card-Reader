// To parse this JSON data, do
//
//     final visitorCardDetailsModel = visitorCardDetailsModelFromJson(jsonString);

import 'dart:convert';

VisitorCardDetailsModel visitorCardDetailsModelFromJson(String str) =>
    VisitorCardDetailsModel.fromJson(json.decode(str));

String visitorCardDetailsModelToJson(VisitorCardDetailsModel data) =>
    json.encode(data.toJson());

class VisitorCardDetailsModel {
  String companyName;
  String personName;
  String email;
  String website;
  String phoneNumber;
  String address;
  String personDesignation;

  VisitorCardDetailsModel({
    required this.companyName,
    required this.personName,
    required this.email,
    required this.website,
    required this.phoneNumber,
    required this.address,
    required this.personDesignation,
  });

  factory VisitorCardDetailsModel.fromJson(Map<String, dynamic> json) =>
      VisitorCardDetailsModel(
        companyName: json["company_name"],
        personName: json["person_name"],
        email: json["email"],
        website: json["website"],
        phoneNumber: json["phone_number"],
        address: json["address"],
        personDesignation: json["person_designation"],
      );

  Map<String, dynamic> toJson() => {
        "company_name": companyName,
        "person_name": personName,
        "email": email,
        "website": website,
        "phone_number": phoneNumber,
        "address": address,
        "person_designation": personDesignation,
      };
}
