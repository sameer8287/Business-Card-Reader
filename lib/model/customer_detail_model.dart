// To parse this JSON data, do
//
//     final customerDetailModel = customerDetailModelFromJson(jsonString);

import 'dart:convert';

CustomerDetailModel customerDetailModelFromJson(String str) => CustomerDetailModel.fromJson(json.decode(str));

String customerDetailModelToJson(CustomerDetailModel data) => json.encode(data.toJson());

class CustomerDetailModel {
    String name;
    String owner;
    DateTime creation;
    DateTime modified;
    String modifiedBy;
    int idx;
    int docstatus;
    String namingSeries;
    String customerName;
    String customerType;
    String gstCategory;
    String exportType;
    String pan;
    String customerGroup;
    String territory;
    int soRequired;
    int dnRequired;
    int disabled;
    int isInternalCustomer;
    int isExFactoryCustomer;
    num bargainLimit;
    String customerPrimaryContact;
    String mobileNo;
    String emailId;
    String primaryAddress;
    String language;
    int isFrozen;
    dynamic defaultCommissionRate;
    String doctype;
    List<dynamic> companies;
    List<PrimaryItem> primaryItems;
    List<dynamic> accounts;
    List<dynamic> creditLimits;
    List<dynamic> salesTeam;

    CustomerDetailModel({
        required this.name,
        required this.owner,
        required this.creation,
        required this.modified,
        required this.modifiedBy,
        required this.idx,
        required this.docstatus,
        required this.namingSeries,
        required this.customerName,
        required this.customerType,
        required this.gstCategory,
        required this.exportType,
        required this.pan,
        required this.customerGroup,
        required this.territory,
        required this.soRequired,
        required this.dnRequired,
        required this.disabled,
        required this.isInternalCustomer,
        required this.isExFactoryCustomer,
        required this.bargainLimit,
        required this.customerPrimaryContact,
        required this.mobileNo,
        required this.emailId,
        required this.primaryAddress,
        required this.language,
        required this.isFrozen,
        required this.defaultCommissionRate,
        required this.doctype,
        required this.companies,
        required this.primaryItems,
        required this.accounts,
        required this.creditLimits,
        required this.salesTeam,
    });

    factory CustomerDetailModel.fromJson(Map<String, dynamic> json) => CustomerDetailModel(
        name: json["name"] ??"",
        owner: json["owner"] ??"",
        creation: DateTime.parse(json["creation"] ??""),
        modified: DateTime.parse(json["modified"] ??""),
        modifiedBy: json["modified_by"] ??"",
        idx: json["idx"] ??"",
        docstatus: json["docstatus"] ??"",
        namingSeries: json["naming_series"] ??"",
        customerName: json["customer_name"] ??"",
        customerType: json["customer_type"] ??"",
        gstCategory: json["gst_category"] ??"",
        exportType: json["export_type"] ??"",
        pan: json["pan"] ??""??'',
        customerGroup: json["customer_group"] ??"",
        territory: json["territory"] ??"",
        soRequired: json["so_required"] ??"",
        dnRequired: json["dn_required"] ??"",
        disabled: json["disabled"] ??"",
        isInternalCustomer: json["is_internal_customer"] ??"",
        isExFactoryCustomer: json["is_ex_factory_customer"] ??"",
        bargainLimit: json["bargain_limit"] ??"",
        customerPrimaryContact: json["customer_primary_contact"] ??""??"",
        mobileNo: json["mobile_no"] ??"",
        emailId: json["email_id"] ??"",
        primaryAddress: json["primary_address"] ??"",
        language: json["language"] ??"",
        isFrozen: json["is_frozen"] ??"",
        defaultCommissionRate: json["default_commission_rate"] ??"",
        doctype: json["doctype"] ??"",
        companies: List<dynamic>.from(json["companies"] ?? [].map((x) => x)),
        primaryItems: List<PrimaryItem>.from(json["primary_items"] .map((x) => PrimaryItem.fromJson(x))),
        accounts: List<dynamic>.from(json["accounts"] ??[].map((x) => x)),
        creditLimits: List<dynamic>.from(json["credit_limits"] ??[].map((x) => x)),
        salesTeam: List<dynamic>.from(json["sales_team"] ??[].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "owner": owner,
        "creation": creation.toIso8601String(),
        "modified": modified.toIso8601String(),
        "modified_by": modifiedBy,
        "idx": idx,
        "docstatus": docstatus,
        "naming_series": namingSeries,
        "customer_name": customerName,
        "customer_type": customerType,
        "gst_category": gstCategory,
        "export_type": exportType,
        "pan": pan,
        "customer_group": customerGroup,
        "territory": territory,
        "so_required": soRequired,
        "dn_required": dnRequired,
        "disabled": disabled,
        "is_internal_customer": isInternalCustomer,
        "is_ex_factory_customer": isExFactoryCustomer,
        "bargain_limit": bargainLimit,
        "customer_primary_contact": customerPrimaryContact,
        "mobile_no": mobileNo,
        "email_id": emailId,
        "primary_address": primaryAddress,
        "language": language,
        "is_frozen": isFrozen,
        "default_commission_rate": defaultCommissionRate,
        "doctype": doctype,
        "companies": List<dynamic>.from(companies.map((x) => x)),
        "primary_items": List<dynamic>.from(primaryItems.map((x) => x.toJson())),
        "accounts": List<dynamic>.from(accounts.map((x) => x)),
        "credit_limits": List<dynamic>.from(creditLimits.map((x) => x)),
        "sales_team": List<dynamic>.from(salesTeam.map((x) => x)),
    };
}

class PrimaryItem {
    String name;
    String owner;
    DateTime creation;
    DateTime modified;
    String modifiedBy;
    String parent;
    String parentfield;
    String parenttype;
    int idx;
    int docstatus;
    String item;
    String doctype;

    PrimaryItem({
        required this.name,
        required this.owner,
        required this.creation,
        required this.modified,
        required this.modifiedBy,
        required this.parent,
        required this.parentfield,
        required this.parenttype,
        required this.idx,
        required this.docstatus,
        required this.item,
        required this.doctype,
    });

    factory PrimaryItem.fromJson(Map<String, dynamic> json) => PrimaryItem(
        name: json["name"] ??"",
        owner: json["owner"] ??"",
        creation: DateTime.parse(json["creation"] ??""),
        modified: DateTime.parse(json["modified"] ??""),
        modifiedBy: json["modified_by"] ??"",
        parent: json["parent"] ??"",
        parentfield: json["parentfield"] ??"",
        parenttype: json["parenttype"] ??"",
        idx: json["idx"] ??"",
        docstatus: json["docstatus"] ??"",
        item: json["item"] ??"",
        doctype: json["doctype"] ??"",
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "owner": owner,
        "creation": creation.toIso8601String(),
        "modified": modified.toIso8601String(),
        "modified_by": modifiedBy,
        "parent": parent,
        "parentfield": parentfield,
        "parenttype": parenttype,
        "idx": idx,
        "docstatus": docstatus,
        "item": item,
        "doctype": doctype,
    };
}