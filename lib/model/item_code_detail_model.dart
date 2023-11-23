// To parse this JSON data, do
//
//     final itemDetailModel = itemDetailModelFromJson(jsonString);

import 'dart:convert';

ItemDetailModel itemDetailModelFromJson(String str) => ItemDetailModel.fromJson(json.decode(str));

String itemDetailModelToJson(ItemDetailModel data) => json.encode(data.toJson());

class ItemDetailModel {
    String name;
    String owner;
    DateTime creation;
    DateTime modified;
    String modifiedBy;
    int idx;
    int docstatus;
    String namingSeries;
    String itemCode;
    String itemName;
    String itemGroup;
    String gstHsnCode;
    int isNilExempt;
    int isNonGst;
    String oilCategory;
    String packType;
    int isItemFromHub;
    String stockUom;
    int disabled;
    int allowAlternativeItem;
    int isStockItem;
    int includeItemInManufacturing;
    int isParent;
    num formulaFactor;
    num openingStock;
    num valuationRate;
    num standardRate;
    num isFixedAsset;
    num autoCreateAssets;
    num overDeliveryReceiptAllowance;
    num overBillingAllowance;
    String description;
    int shelfLifeInDays;
    DateTime endOfLife;
    String defaultMaterialRequestType;
    String valuationMethod;
    num weightPerUnit;
    String weightUom;
    int hasBatchNo;
    int createNewBatch;
    int hasExpiryDate;
    int retainSample;
    int sampleQuantity;
    int hasSerialNo;
    int hasVariants;
    String variantBasedOn;
    int isPurchaseItem;
    num minOrderQty;
    num safetyStock;
    num leadTimeDays;
    num lastPurchaseRate;
    num isCustomerProvidedItem;
    int deliveredBySupplier;
    int isSalesItem;
    int grantCommission;
    num maxDiscount;
    num enableDeferredRevenue;
    num noOfMonths;
    num enableDeferredExpense;
    num noOfMonthsExp;
    num inspectionRequiredBeforePurchase;
    num inspectionRequiredBeforeDelivery;
    num isSubContractedItem;
    String customerCode;
    int publishInHub;
    int syncedWithHub;
    int publishedInWebsite;
    num totalProjectedQty;
    String doctype;
    List<dynamic> barcodes;
    List<dynamic> reorderLevels;
    List<ItemDefault> uoms;
    List<dynamic> attributes;
    List<ItemDefault> itemDefaults;
    List<dynamic> supplierItems;
    List<dynamic> customerItems;
    List<dynamic> taxes;

    ItemDetailModel({
        required this.name,
        required this.owner,
        required this.creation,
        required this.modified,
        required this.modifiedBy,
        required this.idx,
        required this.docstatus,
        required this.namingSeries,
        required this.itemCode,
        required this.itemName,
        required this.itemGroup,
        required this.gstHsnCode,
        required this.isNilExempt,
        required this.isNonGst,
        required this.oilCategory,
        required this.packType,
        required this.isItemFromHub,
        required this.stockUom,
        required this.disabled,
        required this.allowAlternativeItem,
        required this.isStockItem,
        required this.includeItemInManufacturing,
        required this.isParent,
        required this.formulaFactor,
        required this.openingStock,
        required this.valuationRate,
        required this.standardRate,
        required this.isFixedAsset,
        required this.autoCreateAssets,
        required this.overDeliveryReceiptAllowance,
        required this.overBillingAllowance,
        required this.description,
        required this.shelfLifeInDays,
        required this.endOfLife,
        required this.defaultMaterialRequestType,
        required this.valuationMethod,
        required this.weightPerUnit,
        required this.weightUom,
        required this.hasBatchNo,
        required this.createNewBatch,
        required this.hasExpiryDate,
        required this.retainSample,
        required this.sampleQuantity,
        required this.hasSerialNo,
        required this.hasVariants,
        required this.variantBasedOn,
        required this.isPurchaseItem,
        required this.minOrderQty,
        required this.safetyStock,
        required this.leadTimeDays,
        required this.lastPurchaseRate,
        required this.isCustomerProvidedItem,
        required this.deliveredBySupplier,
        required this.isSalesItem,
        required this.grantCommission,
        required this.maxDiscount,
        required this.enableDeferredRevenue,
        required this.noOfMonths,
        required this.enableDeferredExpense,
        required this.noOfMonthsExp,
        required this.inspectionRequiredBeforePurchase,
        required this.inspectionRequiredBeforeDelivery,
        required this.isSubContractedItem,
        required this.customerCode,
        required this.publishInHub,
        required this.syncedWithHub,
        required this.publishedInWebsite,
        required this.totalProjectedQty,
        required this.doctype,
        required this.barcodes,
        required this.reorderLevels,
        required this.uoms,
        required this.attributes,
        required this.itemDefaults,
        required this.supplierItems,
        required this.customerItems,
        required this.taxes,
    });

    factory ItemDetailModel.fromJson(Map<String, dynamic> json) => ItemDetailModel(
        name: json["name"],
        owner: json["owner"],
        creation: DateTime.parse(json["creation"]),
        modified: DateTime.parse(json["modified"]),
        modifiedBy: json["modified_by"],
        idx: json["idx"],
        docstatus: json["docstatus"],
        namingSeries: json["naming_series"],
        itemCode: json["item_code"],
        itemName: json["item_name"],
        itemGroup: json["item_group"],
        gstHsnCode: json["gst_hsn_code"],
        isNilExempt: json["is_nil_exempt"],
        isNonGst: json["is_non_gst"],
        oilCategory: json["oil_category"],
        packType: json["pack_type"],
        isItemFromHub: json["is_item_from_hub"],
        stockUom: json["stock_uom"],
        disabled: json["disabled"],
        allowAlternativeItem: json["allow_alternative_item"],
        isStockItem: json["is_stock_item"],
        includeItemInManufacturing: json["include_item_in_manufacturing"],
        isParent: json["is_parent"],
        formulaFactor: json["formula_factor"],
        openingStock: json["opening_stock"],
        valuationRate: json["valuation_rate"],
        standardRate: json["standard_rate"],
        isFixedAsset: json["is_fixed_asset"],
        autoCreateAssets: json["auto_create_assets"],
        overDeliveryReceiptAllowance: json["over_delivery_receipt_allowance"],
        overBillingAllowance: json["over_billing_allowance"],
        description: json["description"],
        shelfLifeInDays: json["shelf_life_in_days"],
        endOfLife: DateTime.parse(json["end_of_life"]),
        defaultMaterialRequestType: json["default_material_request_type"],
        valuationMethod: json["valuation_method"],
        weightPerUnit: json["weight_per_unit"],
        weightUom: json["weight_uom"],
        hasBatchNo: json["has_batch_no"],
        createNewBatch: json["create_new_batch"],
        hasExpiryDate: json["has_expiry_date"],
        retainSample: json["retain_sample"],
        sampleQuantity: json["sample_quantity"],
        hasSerialNo: json["has_serial_no"],
        hasVariants: json["has_variants"],
        variantBasedOn: json["variant_based_on"],
        isPurchaseItem: json["is_purchase_item"],
        minOrderQty: json["min_order_qty"],
        safetyStock: json["safety_stock"],
        leadTimeDays: json["lead_time_days"],
        lastPurchaseRate: json["last_purchase_rate"],
        isCustomerProvidedItem: json["is_customer_provided_item"],
        deliveredBySupplier: json["delivered_by_supplier"],
        isSalesItem: json["is_sales_item"],
        grantCommission: json["grant_commission"],
        maxDiscount: json["max_discount"],
        enableDeferredRevenue: json["enable_deferred_revenue"],
        noOfMonths: json["no_of_months"],
        enableDeferredExpense: json["enable_deferred_expense"],
        noOfMonthsExp: json["no_of_months_exp"],
        inspectionRequiredBeforePurchase: json["inspection_required_before_purchase"],
        inspectionRequiredBeforeDelivery: json["inspection_required_before_delivery"],
        isSubContractedItem: json["is_sub_contracted_item"],
        customerCode: json["customer_code"],
        publishInHub: json["publish_in_hub"],
        syncedWithHub: json["synced_with_hub"],
        publishedInWebsite: json["published_in_website"],
        totalProjectedQty: json["total_projected_qty"],
        doctype: json["doctype"],
        barcodes: List<dynamic>.from(json["barcodes"].map((x) => x)),
        reorderLevels: List<dynamic>.from(json["reorder_levels"].map((x) => x)),
        uoms: List<ItemDefault>.from(json["uoms"].map((x) => ItemDefault.fromJson(x))),
        attributes: List<dynamic>.from(json["attributes"].map((x) => x)),
        itemDefaults: List<ItemDefault>.from(json["item_defaults"].map((x) => ItemDefault.fromJson(x))),
        supplierItems: List<dynamic>.from(json["supplier_items"].map((x) => x)),
        customerItems: List<dynamic>.from(json["customer_items"].map((x) => x)),
        taxes: List<dynamic>.from(json["taxes"].map((x) => x)),
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
        "item_code": itemCode,
        "item_name": itemName,
        "item_group": itemGroup,
        "gst_hsn_code": gstHsnCode,
        "is_nil_exempt": isNilExempt,
        "is_non_gst": isNonGst,
        "oil_category": oilCategory,
        "pack_type": packType,
        "is_item_from_hub": isItemFromHub,
        "stock_uom": stockUom,
        "disabled": disabled,
        "allow_alternative_item": allowAlternativeItem,
        "is_stock_item": isStockItem,
        "include_item_in_manufacturing": includeItemInManufacturing,
        "is_parent": isParent,
        "formula_factor": formulaFactor,
        "opening_stock": openingStock,
        "valuation_rate": valuationRate,
        "standard_rate": standardRate,
        "is_fixed_asset": isFixedAsset,
        "auto_create_assets": autoCreateAssets,
        "over_delivery_receipt_allowance": overDeliveryReceiptAllowance,
        "over_billing_allowance": overBillingAllowance,
        "description": description,
        "shelf_life_in_days": shelfLifeInDays,
        "end_of_life": "${endOfLife.year.toString().padLeft(4, '0')}-${endOfLife.month.toString().padLeft(2, '0')}-${endOfLife.day.toString().padLeft(2, '0')}",
        "default_material_request_type": defaultMaterialRequestType,
        "valuation_method": valuationMethod,
        "weight_per_unit": weightPerUnit,
        "weight_uom": weightUom,
        "has_batch_no": hasBatchNo,
        "create_new_batch": createNewBatch,
        "has_expiry_date": hasExpiryDate,
        "retain_sample": retainSample,
        "sample_quantity": sampleQuantity,
        "has_serial_no": hasSerialNo,
        "has_variants": hasVariants,
        "variant_based_on": variantBasedOn,
        "is_purchase_item": isPurchaseItem,
        "min_order_qty": minOrderQty,
        "safety_stock": safetyStock,
        "lead_time_days": leadTimeDays,
        "last_purchase_rate": lastPurchaseRate,
        "is_customer_provided_item": isCustomerProvidedItem,
        "delivered_by_supplier": deliveredBySupplier,
        "is_sales_item": isSalesItem,
        "grant_commission": grantCommission,
        "max_discount": maxDiscount,
        "enable_deferred_revenue": enableDeferredRevenue,
        "no_of_months": noOfMonths,
        "enable_deferred_expense": enableDeferredExpense,
        "no_of_months_exp": noOfMonthsExp,
        "inspection_required_before_purchase": inspectionRequiredBeforePurchase,
        "inspection_required_before_delivery": inspectionRequiredBeforeDelivery,
        "is_sub_contracted_item": isSubContractedItem,
        "customer_code": customerCode,
        "publish_in_hub": publishInHub,
        "synced_with_hub": syncedWithHub,
        "published_in_website": publishedInWebsite,
        "total_projected_qty": totalProjectedQty,
        "doctype": doctype,
        "barcodes": List<dynamic>.from(barcodes.map((x) => x)),
        "reorder_levels": List<dynamic>.from(reorderLevels.map((x) => x)),
        "uoms": List<dynamic>.from(uoms.map((x) => x.toJson())),
        "attributes": List<dynamic>.from(attributes.map((x) => x)),
        "item_defaults": List<dynamic>.from(itemDefaults.map((x) => x.toJson())),
        "supplier_items": List<dynamic>.from(supplierItems.map((x) => x)),
        "customer_items": List<dynamic>.from(customerItems.map((x) => x)),
        "taxes": List<dynamic>.from(taxes.map((x) => x)),
    };
}

class ItemDefault {
    String name;
    DateTime creation;
    DateTime modified;
    String modifiedBy;
    String parent;
    String parentfield;
    String parenttype;
    int idx;
    int docstatus;
    String? company;
    String? incomeAccount;
    String doctype;
    String? owner;
    String? uom;
    num? conversionFactor;

    ItemDefault({
        required this.name,
        required this.creation,
        required this.modified,
        required this.modifiedBy,
        required this.parent,
        required this.parentfield,
        required this.parenttype,
        required this.idx,
        required this.docstatus,
        this.company,
        this.incomeAccount,
        required this.doctype,
        this.owner,
        this.uom,
        this.conversionFactor,
    });

    factory ItemDefault.fromJson(Map<String, dynamic> json) => ItemDefault(
        name: json["name"],
        creation: DateTime.parse(json["creation"]),
        modified: DateTime.parse(json["modified"]),
        modifiedBy: json["modified_by"],
        parent: json["parent"],
        parentfield: json["parentfield"],
        parenttype: json["parenttype"],
        idx: json["idx"],
        docstatus: json["docstatus"],
        company: json["company"],
        incomeAccount: json["income_account"],
        doctype: json["doctype"],
        owner: json["owner"],
        uom: json["uom"],
        conversionFactor: json["conversion_factor"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "creation": creation.toIso8601String(),
        "modified": modified.toIso8601String(),
        "modified_by": modifiedBy,
        "parent": parent,
        "parentfield": parentfield,
        "parenttype": parenttype,
        "idx": idx,
        "docstatus": docstatus,
        "company": company,
        "income_account": incomeAccount,
        "doctype": doctype,
        "owner": owner,
        "uom": uom,
        "conversion_factor": conversionFactor,
    };
}
