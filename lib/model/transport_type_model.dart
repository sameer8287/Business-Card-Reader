// To parse this JSON data, do
//
//     final transportTypeModel = transportTypeModelFromJson(jsonString);

import 'dart:convert';

TransportTypeModel transportTypeModelFromJson(String str) => TransportTypeModel.fromJson(json.decode(str));

String transportTypeModelToJson(TransportTypeModel data) => json.encode(data.toJson());

class TransportTypeModel {
    String name;
    String owner;
    DateTime creation;
    DateTime modified;
    String modifiedBy;
    int idx;
    int docstatus;
    String city;
    String state;
    String country;
    int stationDistance;
    int transitTime;
    String doctype;
    List<Freight> freight;

    TransportTypeModel({
        required this.name,
        required this.owner,
        required this.creation,
        required this.modified,
        required this.modifiedBy,
        required this.idx,
        required this.docstatus,
        required this.city,
        required this.state,
        required this.country,
        required this.stationDistance,
        required this.transitTime,
        required this.doctype,
        required this.freight,
    });

    factory TransportTypeModel.fromJson(Map<String, dynamic> json) => TransportTypeModel(
        name: json["name"],
        owner: json["owner"],
        creation: DateTime.parse(json["creation"]),
        modified: DateTime.parse(json["modified"]),
        modifiedBy: json["modified_by"],
        idx: json["idx"],
        docstatus: json["docstatus"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        stationDistance: json["station_distance"],
        transitTime: json["transit_time"],
        doctype: json["doctype"],
        freight: List<Freight>.from(json["freight"].map((x) => Freight.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "owner": owner,
        "creation": creation.toIso8601String(),
        "modified": modified.toIso8601String(),
        "modified_by": modifiedBy,
        "idx": idx,
        "docstatus": docstatus,
        "city": city,
        "state": state,
        "country": country,
        "station_distance": stationDistance,
        "transit_time": transitTime,
        "doctype": doctype,
        "freight": List<dynamic>.from(freight.map((x) => x.toJson())),
    };
}

class Freight {
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
    String transport;
    double freight;
    String transportType;
    String capacity;
    String doctype;

    Freight({
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
        required this.transport,
        required this.freight,
        required this.transportType,
        required this.capacity,
        required this.doctype,
    });

    factory Freight.fromJson(Map<String, dynamic> json) => Freight(
        name: json["name"],
        owner: json["owner"],
        creation: DateTime.parse(json["creation"]),
        modified: DateTime.parse(json["modified"]),
        modifiedBy: json["modified_by"],
        parent: json["parent"],
        parentfield: json["parentfield"],
        parenttype: json["parenttype"],
        idx: json["idx"],
        docstatus: json["docstatus"],
        transport: json["transport"],
        freight: json["freight"],
        transportType: json["transport_type"],
        capacity: json["capacity"],
        doctype: json["doctype"],
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
        "transport": transport,
        "freight": freight,
        "transport_type": transportType,
        "capacity": capacity,
        "doctype": doctype,
    };
}
