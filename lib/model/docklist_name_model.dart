// To parse this JSON data, do
//
//     final dockListNameModel = dockListNameModelFromJson(jsonString);

import 'dart:convert';

DockListNameModel dockListNameModelFromJson(String str) => DockListNameModel.fromJson(json.decode(str));

String dockListNameModelToJson(DockListNameModel data) => json.encode(data.toJson());

class DockListNameModel {
    String name;

    DockListNameModel({
        required this.name,
    });

    factory DockListNameModel.fromJson(Map<String, dynamic> json) => DockListNameModel(
        name: json["name"] ?? "",
    );

    Map<String, dynamic> toJson() => {
        "name": name,
    };
}
