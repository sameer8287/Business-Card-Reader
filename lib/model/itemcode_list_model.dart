// To parse this JSON data, do
//
//     final itemcodeListModel = itemcodeListModelFromJson(jsonString);

import 'dart:convert';

ItemcodeListModel itemcodeListModelFromJson(String str) => ItemcodeListModel.fromJson(json.decode(str));

String itemcodeListModelToJson(ItemcodeListModel data) => json.encode(data.toJson());

class ItemcodeListModel {
    String name;
    String itemGroup;

    ItemcodeListModel({
        required this.name,
        required this.itemGroup,
    });

    factory ItemcodeListModel.fromJson(Map<String, dynamic> json) => ItemcodeListModel(
        name: json["item_name"] ?? "",
        itemGroup: json["item_group"] ?? "",
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "item_group": itemGroup,
    };
}
