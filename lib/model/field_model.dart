// To parse this JSON data, do
//
//     final fieldModel = fieldModelFromJson(jsonString);

import 'dart:convert';

FieldModel fieldModelFromJson(String str) => FieldModel.fromJson(json.decode(str));

String fieldModelToJson(FieldModel data) => json.encode(data.toJson());

class FieldModel {
    String doctype;
    String name;
    DateTime creation;
    DateTime modified;
    String modifiedBy;
    String owner;
    num docstatus;
    String parent;
    String parentfield;
    String parenttype;
    num idx;
    String fieldname;
    String label;
    String fieldtype;
    String options;
    num searchIndex;
    dynamic showDashboard;
    num hidden;
    int setOnlyOnce;
    int allowInQuickEntry;
    int printHide;
    int reportHide;
    int reqd;
    int bold;
    int inGlobalSearch;
    int collapsible;
    int unique;
    int noCopy;
    int allowOnSubmit;
    int showPreviewPopup;
    int permlevel;
    int ignoreUserPermissions;
    int columns;
    String initValue;
    int inListView;
    int fetchIfEmpty;
    int inFilter;
    int rememberLastSelectedValue;
    int ignoreXssFilter;
    int printHideIfNoValue;
    int allowBulkEdit;
    int inStandardFilter;
    int inPreview;
    int readOnly;
    int length;
    int translatable;
    int hideBorder;
    int hideDays;
    int hideSeconds;
    int nonNegative;
    dynamic isVirtual;
    String linkedDocumentType;
    List<dynamic> fields;
    List<dynamic> permissions;
    List<dynamic> actions;
    List<dynamic> links;
    List<dynamic> states;
    List<String> searchFields;
    dynamic isCustomField;

    FieldModel({
        required this.doctype,
        required this.name,
        required this.creation,
        required this.modified,
        required this.modifiedBy,
        required this.owner,
        required this.docstatus,
        required this.parent,
        required this.parentfield,
        required this.parenttype,
        required this.idx,
        required this.fieldname,
        required this.label,
        required this.fieldtype,
        required this.options,
        required this.searchIndex,
        required this.showDashboard,
        required this.hidden,
        required this.setOnlyOnce,
        required this.allowInQuickEntry,
        required this.printHide,
        required this.reportHide,
        required this.reqd,
        required this.bold,
        required this.inGlobalSearch,
        required this.collapsible,
        required this.unique,
        required this.noCopy,
        required this.allowOnSubmit,
        required this.showPreviewPopup,
        required this.permlevel,
        required this.ignoreUserPermissions,
        required this.columns,
        required this.initValue,
        required this.inListView,
        required this.fetchIfEmpty,
        required this.inFilter,
        required this.rememberLastSelectedValue,
        required this.ignoreXssFilter,
        required this.printHideIfNoValue,
        required this.allowBulkEdit,
        required this.inStandardFilter,
        required this.inPreview,
        required this.readOnly,
        required this.length,
        required this.translatable,
        required this.hideBorder,
        required this.hideDays,
        required this.hideSeconds,
        required this.nonNegative,
        required this.isVirtual,
        required this.linkedDocumentType,
        required this.fields,
        required this.permissions,
        required this.actions,
        required this.links,
        required this.states,
        required this.searchFields,
        this.isCustomField,
    });

    factory FieldModel.fromJson(Map<String, dynamic> json) => FieldModel(
        doctype: json["doctype"]??"",
        name: json["name"]??"",
        creation: DateTime.parse(json["creation"]??""),
        modified: DateTime.parse(json["modified"]??""),
        modifiedBy: json["modified_by"]??"",
        owner: json["owner"]??"",
        docstatus: json["docstatus"]??"",
        parent: json["parent"]??"",
        parentfield: json["parentfield"]??"",
        parenttype: json["parenttype"]??"",
        idx: json["idx"]??"",
        fieldname: json["fieldname"]??"",
        label: json["label"]??"",
        fieldtype: json["fieldtype"]??"",
        options: json["options"]??"",
        searchIndex: json["search_index"]??"",
        showDashboard: json["show_dashboard"]??"",
        hidden: json["hidden"]??"",
        setOnlyOnce: json["set_only_once"]??0,
        allowInQuickEntry: json["allow_in_quick_entry"]??"",
        printHide: json["print_hide"]??"",
        reportHide: json["report_hide"]??"",
        reqd: json["reqd"]??"",
        bold: json["bold"]??"",
        inGlobalSearch: json["in_global_search"]??"",
        collapsible: json["collapsible"]??"",
        unique: json["unique"]??"",
        noCopy: json["no_copy"]??"",
        allowOnSubmit: json["allow_on_submit"]??"",
        showPreviewPopup: json["show_preview_popup"]??0,
        permlevel: json["permlevel"]??"",
        ignoreUserPermissions: json["ignore_user_permissions"]??"",
        columns: json["columns"]??"",
        initValue:json["default"]??"",
        inListView: json["in_list_view"]??"",
        fetchIfEmpty: json["fetch_if_empty"]??"",
        inFilter: json["in_filter"]??0,
        rememberLastSelectedValue: json["remember_last_selected_value"]??0,
        ignoreXssFilter: json["ignore_xss_filter"]??"",
        printHideIfNoValue: json["print_hide_if_no_value"]??"",
        allowBulkEdit: json["allow_bulk_edit"]??0,
        inStandardFilter: json["in_standard_filter"]??"",
        inPreview: json["in_preview"]??"",
        readOnly: json["read_only"]??"",
        length: json["length"]??"",
        translatable: json["translatable"]??"",
        hideBorder: json["hide_border"]??"",
        hideDays: json["hide_days"]??"",
        hideSeconds: json["hide_seconds"]??"",
        nonNegative: json["non_negative"]??"",
        isVirtual: json["is_virtual"]??"",
        linkedDocumentType: json["linked_document_type"]??"",
        fields: List<dynamic>.from(json["fields"]??[].map((x) => x)),
        permissions: List<dynamic>.from(json["permissions"]??[].map((x) => x)),
        actions: List<dynamic>.from(json["actions"]??[].map((x) => x)),
        links: List<dynamic>.from(json["links"]??[].map((x) => x)),
        searchFields: List<String>.from(json["search_fields"]??[].map((x) => x)),
        isCustomField: json["is_custom_field"]??"",
        states:  List<String>.from(json["states"]??[].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "doctype": doctype,
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
        "fieldname": fieldname,
        "label": label,
        "fieldtype": fieldtype,
        "options": options,
        "search_index": searchIndex,
        "show_dashboard": showDashboard,
        "hidden": hidden,
        "set_only_once": setOnlyOnce,
        "allow_in_quick_entry": allowInQuickEntry,
        "print_hide": printHide,
        "report_hide": reportHide,
        "reqd": reqd,
        "bold": bold,
        "in_global_search": inGlobalSearch,
        "collapsible": collapsible,
        "unique": unique,
        "no_copy": noCopy,
        "allow_on_submit": allowOnSubmit,
        "show_preview_popup": showPreviewPopup,
        "permlevel": permlevel,
        "ignore_user_permissions": ignoreUserPermissions,
        "columns": columns,
        "default":initValue,
        "in_list_view": inListView,
        "fetch_if_empty": fetchIfEmpty,
        "in_filter": inFilter,
        "remember_last_selected_value": rememberLastSelectedValue,
        "ignore_xss_filter": ignoreXssFilter,
        "print_hide_if_no_value": printHideIfNoValue,
        "allow_bulk_edit": allowBulkEdit,
        "in_standard_filter": inStandardFilter,
        "in_preview": inPreview,
        "read_only": readOnly,
        "length": length,
        "translatable": translatable,
        "hide_border": hideBorder,
        "hide_days": hideDays,
        "hide_seconds": hideSeconds,
        "non_negative": nonNegative,
        "is_virtual": isVirtual,
        "linked_document_type": linkedDocumentType,
        "fields": List<dynamic>.from(fields.map((x) => x)),
        "permissions": List<dynamic>.from(permissions.map((x) => x)),
        "actions": List<dynamic>.from(actions.map((x) => x)),
        "links": List<dynamic>.from(links.map((x) => x)),
        "states": List<dynamic>.from(states.map((x) => x)),
        "search_fields": List<dynamic>.from(searchFields.map((x) => x)),
        "is_custom_field": isCustomField,
    };
}
