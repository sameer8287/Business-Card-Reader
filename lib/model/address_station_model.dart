// To parse this JSON data, do
//
//     final addressStationModel = addressStationModelFromJson(jsonString);

import 'dart:convert';

List<AddressStationModel> addressStationModelFromJson(String str) =>
    List<AddressStationModel>.from(
        json.decode(str).map((x) => AddressStationModel.fromJson(x)));

String addressStationModelToJson(List<AddressStationModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AddressStationModel {
  String name;
  DateTime creation;
  DateTime modified;
  String modifiedBy;
  String owner;
  int docstatus;
  dynamic parent;
  dynamic parentfield;
  dynamic parenttype;
  int idx;
  String addressTitle;
  String addressType;
  String addressLine1;
  dynamic addressLine2;
  String city;
  String county;
  String state;
  String country;
  dynamic pincode;
  dynamic emailId;
  dynamic phone;
  dynamic fax;
  int isPrimaryAddress;
  int isShippingAddress;
  int disabled;
  dynamic userTags;
  dynamic comments;
  dynamic assign;
  dynamic likedBy;
  dynamic taxCategory;
  int isYourCompanyAddress;
  String station;
  dynamic gstin;
  String gstState;
  String gstStateNumber;

  AddressStationModel({
    required this.name,
    required this.creation,
    required this.modified,
    required this.modifiedBy,
    required this.owner,
    required this.docstatus,
    this.parent,
    this.parentfield,
    this.parenttype,
    required this.idx,
    required this.addressTitle,
    required this.addressType,
    required this.addressLine1,
    this.addressLine2,
    required this.city,
    required this.county,
    required this.state,
    required this.country,
    this.pincode,
    this.emailId,
    this.phone,
    this.fax,
    required this.isPrimaryAddress,
    required this.isShippingAddress,
    required this.disabled,
    this.userTags,
    this.comments,
    this.assign,
    this.likedBy,
    this.taxCategory,
    required this.isYourCompanyAddress,
    required this.station,
    this.gstin,
    required this.gstState,
    required this.gstStateNumber,
  });

  factory AddressStationModel.fromJson(Map<String, dynamic> json) =>
      AddressStationModel(
        name: json["name"] ?? "",
        creation: DateTime.parse(json["creation"] ?? ""),
        modified: DateTime.parse(json["modified"] ?? ""),
        modifiedBy: json["modified_by"] ?? "",
        owner: json["owner"] ?? "",
        docstatus: json["docstatus"] ?? "",
        parent: json["parent"] ?? "",
        parentfield: json["parentfield"] ?? "",
        parenttype: json["parenttype"] ?? "",
        idx: json["idx"] ?? "",
        addressTitle: json["address_title"] ?? "",
        addressType: json["address_type"] ?? "",
        addressLine1: json["address_line1"] ?? "",
        addressLine2: json["address_line2"] ?? "",
        city: json["city"] ?? "",
        county: json["county"] ?? "",
        state: json["state"] ?? "",
        country: json["country"] ?? "",
        pincode: json["pincode"] ?? "",
        emailId: json["email_id"] ?? "",
        phone: json["phone"] ?? "",
        fax: json["fax"] ?? "",
        isPrimaryAddress: json["is_primary_address"] ?? "",
        isShippingAddress: json["is_shipping_address"] ?? "",
        disabled: json["disabled"] ?? "",
        userTags: json["_user_tags"] ?? "",
        comments: json["_comments"] ?? "",
        assign: json["_assign"] ?? "",
        likedBy: json["_liked_by"] ?? "",
        taxCategory: json["tax_category"] ?? "",
        isYourCompanyAddress: json["is_your_company_address"] ?? "",
        station: json.containsKey("station") ? json["station"] ?? '' : "",
        gstin: json["gstin"] ?? "",
        gstState: json["gst_state"] ?? "",
        gstStateNumber: json["gst_state_number"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "creation": creation.toIso8601String(),
        "modified": modified.toIso8601String(),
        "modified_by": modifiedBy,
        "owner": owner,
        "docstatus": docstatus,
        "parent": parent,
        "parentfield": parentfield,
        "parenttype": parenttype,
        "idx": idx,
        "address_title": addressTitle,
        "address_type": addressType,
        "address_line1": addressLine1,
        "address_line2": addressLine2,
        "city": city,
        "county": county,
        "state": state,
        "country": country,
        "pincode": pincode,
        "email_id": emailId,
        "phone": phone,
        "fax": fax,
        "is_primary_address": isPrimaryAddress,
        "is_shipping_address": isShippingAddress,
        "disabled": disabled,
        "_user_tags": userTags,
        "_comments": comments,
        "_assign": assign,
        "_liked_by": likedBy,
        "tax_category": taxCategory,
        "is_your_company_address": isYourCompanyAddress,
        "station": station,
        "gstin": gstin,
        "gst_state": gstState,
        "gst_state_number": gstStateNumber,
      };
}
