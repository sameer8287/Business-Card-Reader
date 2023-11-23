// To parse this JSON data, do
//
//     final itemPriceListModel = itemPriceListModelFromJson(jsonString);

import 'dart:convert';

ItemPriceListModel itemPriceListModelFromJson(String str) => ItemPriceListModel.fromJson(json.decode(str));

String itemPriceListModelToJson(ItemPriceListModel data) => json.encode(data.toJson());

class ItemPriceListModel {
    String name;
    String owner;
    DateTime creation;
    DateTime modified;
    String modifiedBy;
    int idx;
    int docstatus;
    String itemCode;
    int packingUnit;
    String itemName;
    String itemDescription;
    String priceList;
    int buying;
    int selling;
    String currency;
    double priceListRate;
    DateTime validFrom;
    int leadTimeDays;
    String doctype;

    ItemPriceListModel({
        required this.name,
        required this.owner,
        required this.creation,
        required this.modified,
        required this.modifiedBy,
        required this.idx,
        required this.docstatus,
        required this.itemCode,
        required this.packingUnit,
        required this.itemName,
        required this.itemDescription,
        required this.priceList,
        required this.buying,
        required this.selling,
        required this.currency,
        required this.priceListRate,
        required this.validFrom,
        required this.leadTimeDays,
        required this.doctype,
    });

    factory ItemPriceListModel.fromJson(Map<String, dynamic> json) => ItemPriceListModel(
        name: json["name"],
        owner: json["owner"],
        creation: DateTime.parse(json["creation"]),
        modified: DateTime.parse(json["modified"]),
        modifiedBy: json["modified_by"],
        idx: json["idx"],
        docstatus: json["docstatus"],
        itemCode: json["item_code"],
        packingUnit: json["packing_unit"],
        itemName: json["item_name"],
        itemDescription: json["item_description"],
        priceList: json["price_list"],
        buying: json["buying"],
        selling: json["selling"],
        currency: json["currency"],
        priceListRate: json["price_list_rate"],
        validFrom: DateTime.parse(json["valid_from"]),
        leadTimeDays: json["lead_time_days"],
        doctype: json["doctype"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "owner": owner,
        "creation": creation.toIso8601String(),
        "modified": modified.toIso8601String(),
        "modified_by": modifiedBy,
        "idx": idx,
        "docstatus": docstatus,
        "item_code": itemCode,
        "packing_unit": packingUnit,
        "item_name": itemName,
        "item_description": itemDescription,
        "price_list": priceList,
        "buying": buying,
        "selling": selling,
        "currency": currency,
        "price_list_rate": priceListRate,
        "valid_from": "${validFrom.year.toString().padLeft(4, '0')}-${validFrom.month.toString().padLeft(2, '0')}-${validFrom.day.toString().padLeft(2, '0')}",
        "lead_time_days": leadTimeDays,
        "doctype": doctype,
    };
}
