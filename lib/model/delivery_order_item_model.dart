// To parse this JSON data, do
//
//     final deliveryOrderItemModel = deliveryOrderItemModelFromJson(jsonString);

import 'dart:convert';

DeliveryOrderItemModel deliveryOrderItemModelFromJson(String str) => DeliveryOrderItemModel.fromJson(json.decode(str));

String deliveryOrderItemModelToJson(DeliveryOrderItemModel data) => json.encode(data.toJson());

class DeliveryOrderItemModel {
  List<Datum> data;

  DeliveryOrderItemModel({
    required this.data,
  });

  factory DeliveryOrderItemModel.fromJson(Map<String, dynamic> json) => DeliveryOrderItemModel(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  String name;
  ItemGroup itemGroup;

  Datum({
    required this.name,
    required this.itemGroup,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    name: json["name"],
    itemGroup: itemGroupValues.map[json["item_group"]]!,
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "item_group": itemGroupValues.reverse[itemGroup],
  };
}

enum ItemGroup { FINISHED_GOODS, FIXED_ASSETS }

final itemGroupValues = EnumValues({
  "Finished Goods": ItemGroup.FINISHED_GOODS,
  "Fixed Assets": ItemGroup.FIXED_ASSETS
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
