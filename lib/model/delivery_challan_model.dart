// To parse this JSON data, do
//
//     final deliverChallanModel = deliverChallanModelFromJson(jsonString);

import 'dart:convert';

DeliverChallanModel deliverChallanModelFromJson(String str) => DeliverChallanModel.fromJson(json.decode(str));

String deliverChallanModelToJson(DeliverChallanModel data) => json.encode(data.toJson());

class DeliverChallanModel {
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
    String title;
    String namingSeries;
    String customer;
    String customerName;
    dynamic amendedFrom;
    String company;
    DateTime postingDate;
    String postingTime;
    int setPostingTime;
    int isReturn;
    int issueCreditNote;
    dynamic returnAgainst;
    dynamic costCenter;
    dynamic project;
    String poNo;
    dynamic poDate;
    dynamic pickList;
    String shippingAddressName;
    dynamic shippingAddress;
    dynamic dispatchAddressName;
    dynamic dispatchAddress;
    String contactPerson;
    String contactDisplay;
    String contactMobile;
    String contactEmail;
    String customerAddress;
    dynamic taxId;
    String addressDisplay;
    String companyAddress;
    String companyAddressDisplay;
    String currency;
    double conversionRate;
    String sellingPriceList;
    String priceListCurrency;
    double plcConversionRate;
    int ignorePricingRule;
    String setWarehouse;
    dynamic setTargetWarehouse;
    dynamic scanBarcode;
    double totalQty;
    double baseTotal;
    double baseNetTotal;
    double totalNetWeight;
    double total;
    double netTotal;
    String taxCategory;
    dynamic shippingRule;
    String taxesAndCharges;
    String otherChargesCalculation;
    double baseTotalTaxesAndCharges;
    double totalTaxesAndCharges;
    String applyDiscountOn;
    double baseDiscountAmount;
    double additionalDiscountPercentage;
    double discountAmount;
    double baseGrandTotal;
    double baseRoundingAdjustment;
    double baseRoundedTotal;
    String baseInWords;
    double grandTotal;
    double roundingAdjustment;
    double roundedTotal;
    String inWords;
    int disableRoundedTotal;
    dynamic tcName;
    dynamic terms;
    dynamic transporter;
    dynamic driver;
    dynamic lrNo;
    dynamic vehicleNo;
    dynamic transporterName;
    dynamic driverName;
    DateTime lrDate;
    dynamic campaign;
    dynamic source;
    int isInternalCustomer;
    dynamic representsCompany;
    dynamic interCompanyReference;
    double perBilled;
    String customerGroup;
    String territory;
    dynamic letterHead;
    dynamic selectPrintHeading;
    String language;
    int printWithoutAmount;
    int groupSameItems;
    String status;
    double perInstalled;
    String installationStatus;
    double perReturned;
    dynamic excisePage;
    dynamic instructions;
    dynamic autoRepeat;
    String salesPartner;
    double amountEligibleForCommission;
    double commissionRate;
    double totalCommission;
    dynamic userTags;
    dynamic comments;
    dynamic assign;
    dynamic likedBy;
    String seen;
    dynamic customerGstin;
    String placeOfSupply;
    dynamic billingAddressGstin;
    dynamic companyGstin;
    dynamic gstTransporterId;
    double distance;
    String modeOfTransport;
    String gstVehicleType;
    String gstCategory;
    dynamic ewaybill;
    dynamic portCode;
    dynamic shippingBillDate;
    dynamic shippingBillNumber;

    DeliverChallanModel({
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
        required this.title,
        required this.namingSeries,
        required this.customer,
        required this.customerName,
        this.amendedFrom,
        required this.company,
        required this.postingDate,
        required this.postingTime,
        required this.setPostingTime,
        required this.isReturn,
        required this.issueCreditNote,
        this.returnAgainst,
        this.costCenter,
        this.project,
        required this.poNo,
        this.poDate,
        this.pickList,
        required this.shippingAddressName,
        this.shippingAddress,
        this.dispatchAddressName,
        this.dispatchAddress,
        required this.contactPerson,
        required this.contactDisplay,
        required this.contactMobile,
        required this.contactEmail,
        required this.customerAddress,
        this.taxId,
        required this.addressDisplay,
        required this.companyAddress,
        required this.companyAddressDisplay,
        required this.currency,
        required this.conversionRate,
        required this.sellingPriceList,
        required this.priceListCurrency,
        required this.plcConversionRate,
        required this.ignorePricingRule,
        required this.setWarehouse,
        this.setTargetWarehouse,
        this.scanBarcode,
        required this.totalQty,
        required this.baseTotal,
        required this.baseNetTotal,
        required this.totalNetWeight,
        required this.total,
        required this.netTotal,
        required this.taxCategory,
        this.shippingRule,
        required this.taxesAndCharges,
        required this.otherChargesCalculation,
        required this.baseTotalTaxesAndCharges,
        required this.totalTaxesAndCharges,
        required this.applyDiscountOn,
        required this.baseDiscountAmount,
        required this.additionalDiscountPercentage,
        required this.discountAmount,
        required this.baseGrandTotal,
        required this.baseRoundingAdjustment,
        required this.baseRoundedTotal,
        required this.baseInWords,
        required this.grandTotal,
        required this.roundingAdjustment,
        required this.roundedTotal,
        required this.inWords,
        required this.disableRoundedTotal,
        this.tcName,
        this.terms,
        this.transporter,
        this.driver,
        this.lrNo,
        this.vehicleNo,
        this.transporterName,
        this.driverName,
        required this.lrDate,
        this.campaign,
        this.source,
        required this.isInternalCustomer,
        this.representsCompany,
        this.interCompanyReference,
        required this.perBilled,
        required this.customerGroup,
        required this.territory,
        this.letterHead,
        this.selectPrintHeading,
        required this.language,
        required this.printWithoutAmount,
        required this.groupSameItems,
        required this.status,
        required this.perInstalled,
        required this.installationStatus,
        required this.perReturned,
        this.excisePage,
        this.instructions,
        this.autoRepeat,
        required this.salesPartner,
        required this.amountEligibleForCommission,
        required this.commissionRate,
        required this.totalCommission,
        this.userTags,
        this.comments,
        this.assign,
        this.likedBy,
        required this.seen,
        this.customerGstin,
        required this.placeOfSupply,
        this.billingAddressGstin,
        this.companyGstin,
        this.gstTransporterId,
        required this.distance,
        required this.modeOfTransport,
        required this.gstVehicleType,
        required this.gstCategory,
        this.ewaybill,
        this.portCode,
        this.shippingBillDate,
        this.shippingBillNumber,
    });

    factory DeliverChallanModel.fromJson(Map<String, dynamic> json) => DeliverChallanModel(
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
        title: json["title"] ?? "",
        namingSeries: json["naming_series"] ?? "",
        customer: json["customer"] ?? "",
        customerName: json["customer_name"] ?? "",
        amendedFrom: json["amended_from"] ?? "",
        company: json["company"] ?? "",
        postingDate: DateTime.parse(json["posting_date"] ?? ""),
        postingTime: json["posting_time"] ?? "",
        setPostingTime: json["set_posting_time"] ?? "",
        isReturn: json["is_return"] ?? "",
        issueCreditNote: json["issue_credit_note"] ?? "",
        returnAgainst: json["return_against"] ?? "",
        costCenter: json["cost_center"] ?? "",
        project: json["project"] ?? "",
        poNo: json["po_no"] ?? "",
        poDate: json["po_date"] ?? "",
        pickList: json["pick_list"] ?? "",
        shippingAddressName: json["shipping_address_name"] ?? "",
        shippingAddress: json["shipping_address"] ?? "",
        dispatchAddressName: json["dispatch_address_name"] ?? "",
        dispatchAddress: json["dispatch_address"] ?? "",
        contactPerson: json["contact_person"] ?? "" ,
        contactDisplay: json["contact_display"] ?? "",
        contactMobile: json["contact_mobile"] ?? "",
        contactEmail: json["contact_email"] ?? "",
        customerAddress: json["customer_address"] ?? "",
        taxId: json["tax_id"] ?? "",
        addressDisplay: json["address_display"] ?? "",
        companyAddress: json["company_address"] ?? "",
        companyAddressDisplay: json["company_address_display"] ?? "",
        currency: json["currency"] ?? "",
        conversionRate: json["conversion_rate"] ?? "",
        sellingPriceList: json["selling_price_list"] ?? "",
        priceListCurrency: json["price_list_currency"] ?? "",
        plcConversionRate: json["plc_conversion_rate"] ?? "",
        ignorePricingRule: json["ignore_pricing_rule"] ?? "",
        setWarehouse: json["set_warehouse"] ?? "",
        setTargetWarehouse: json["set_target_warehouse"] ?? "",
        scanBarcode: json["scan_barcode"] ?? "",
        totalQty: json["total_qty"] ?? "",
        baseTotal: json["base_total"] ?? "",
        baseNetTotal: json["base_net_total"] ?? "",
        totalNetWeight: json["total_net_weight"] ?.toDouble(),
        total: json["total"] ?? "",
        netTotal: json["net_total"] ?? "",
        taxCategory: json["tax_category"] ?? "",
        shippingRule: json["shipping_rule"] ?? "",
        taxesAndCharges: json["taxes_and_charges"] ?? "",
        otherChargesCalculation: json["other_charges_calculation"] ?? "",
        baseTotalTaxesAndCharges: json["base_total_taxes_and_charges"] ?.toDouble(),
        totalTaxesAndCharges: json["total_taxes_and_charges"] ?.toDouble(),
        applyDiscountOn: json["apply_discount_on"] ?? "",
        baseDiscountAmount: json["base_discount_amount"] ?? "",
        additionalDiscountPercentage: json["additional_discount_percentage"] ?? "",
        discountAmount: json["discount_amount"] ?? "",
        baseGrandTotal: json["base_grand_total"] ?.toDouble(),
        baseRoundingAdjustment: json["base_rounding_adjustment"] ?.toDouble(),
        baseRoundedTotal: json["base_rounded_total"] ?? "",
        baseInWords: json["base_in_words"] ?? "",
        grandTotal: json["grand_total"] ?.toDouble(),
        roundingAdjustment: json["rounding_adjustment"] ?.toDouble(),
        roundedTotal: json["rounded_total"] ?? "",
        inWords: json["in_words"] ?? "",
        disableRoundedTotal: json["disable_rounded_total"] ?? "",
        tcName: json["tc_name"] ?? "",
        terms: json["terms"] ?? "",
        transporter: json["transporter"] ?? "",
        driver: json["driver"] ?? "",
        lrNo: json["lr_no"] ?? "",
        vehicleNo: json["vehicle_no"] ?? "",
        transporterName: json["transporter_name"] ?? "",
        driverName: json["driver_name"] ?? "",
        lrDate: DateTime.parse(json["lr_date"] ?? ""),
        campaign: json["campaign"] ?? "",
        source: json["source"] ?? "",
        isInternalCustomer: json["is_internal_customer"] ?? "",
        representsCompany: json["represents_company"] ?? "",
        interCompanyReference: json["inter_company_reference"] ?? "",
        perBilled: json["per_billed"] ?? "",
        customerGroup: json["customer_group"] ?? "",
        territory: json["territory"] ?? "",
        letterHead: json["letter_head"] ?? "",
        selectPrintHeading: json["select_print_heading"] ?? "",
        language: json["language"] ?? "",
        printWithoutAmount: json["print_without_amount"] ?? "",
        groupSameItems: json["group_same_items"] ?? "",
        status: json["status"] ?? "",
        perInstalled: json["per_installed"] ?? "",
        installationStatus: json["installation_status"] ?? "",
        perReturned: json["per_returned"] ?? "",
        excisePage: json["excise_page"] ?? "",
        instructions: json["instructions"] ?? "",
        autoRepeat: json["auto_repeat"] ?? "",
        salesPartner: json["sales_partner"] ?? "",
        amountEligibleForCommission: json["amount_eligible_for_commission"] ?? "",
        commissionRate: json["commission_rate"] ?? "",
        totalCommission: json["total_commission"] ?? "",
        userTags: json["_user_tags"] ?? "",
        comments: json["_comments"] ?? "",
        assign: json["_assign"] ?? "",
        likedBy: json["_liked_by"] ?? "",
        seen: json["_seen"] ?? "",
        customerGstin: json["customer_gstin"] ?? "",
        placeOfSupply: json["place_of_supply"] ?? "",
        billingAddressGstin: json["billing_address_gstin"] ?? "",
        companyGstin: json["company_gstin"] ?? "",
        gstTransporterId: json["gst_transporter_id"] ?? "",
        distance: json["distance"] ?? "",
        modeOfTransport: json["mode_of_transport"] ?? "",
        gstVehicleType: json["gst_vehicle_type"] ?? "",
        gstCategory: json["gst_category"] ?? "",
        ewaybill: json["ewaybill"] ?? "",
        portCode: json["port_code"] ?? "",
        shippingBillDate: json["shipping_bill_date"] ?? "",
        shippingBillNumber: json["shipping_bill_number"] ?? "",
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
        "title": title,
        "naming_series": namingSeries,
        "customer": customer,
        "customer_name": customerName,
        "amended_from": amendedFrom,
        "company": company,
        "posting_date": "${postingDate.year.toString().padLeft(4, '0')}-${postingDate.month.toString().padLeft(2, '0')}-${postingDate.day.toString().padLeft(2, '0')}",
        "posting_time": postingTime,
        "set_posting_time": setPostingTime,
        "is_return": isReturn,
        "issue_credit_note": issueCreditNote,
        "return_against": returnAgainst,
        "cost_center": costCenter,
        "project": project,
        "po_no": poNo,
        "po_date": poDate,
        "pick_list": pickList,
        "shipping_address_name": shippingAddressName,
        "shipping_address": shippingAddress,
        "dispatch_address_name": dispatchAddressName,
        "dispatch_address": dispatchAddress,
        "contact_person": contactPerson,
        "contact_display": contactDisplay,
        "contact_mobile": contactMobile,
        "contact_email": contactEmail,
        "customer_address": customerAddress,
        "tax_id": taxId,
        "address_display": addressDisplay,
        "company_address": companyAddress,
        "company_address_display": companyAddressDisplay,
        "currency": currency,
        "conversion_rate": conversionRate,
        "selling_price_list": sellingPriceList,
        "price_list_currency": priceListCurrency,
        "plc_conversion_rate": plcConversionRate,
        "ignore_pricing_rule": ignorePricingRule,
        "set_warehouse": setWarehouse,
        "set_target_warehouse": setTargetWarehouse,
        "scan_barcode": scanBarcode,
        "total_qty": totalQty,
        "base_total": baseTotal,
        "base_net_total": baseNetTotal,
        "total_net_weight": totalNetWeight,
        "total": total,
        "net_total": netTotal,
        "tax_category": taxCategory,
        "shipping_rule": shippingRule,
        "taxes_and_charges": taxesAndCharges,
        "other_charges_calculation": otherChargesCalculation,
        "base_total_taxes_and_charges": baseTotalTaxesAndCharges,
        "total_taxes_and_charges": totalTaxesAndCharges,
        "apply_discount_on": applyDiscountOn,
        "base_discount_amount": baseDiscountAmount,
        "additional_discount_percentage": additionalDiscountPercentage,
        "discount_amount": discountAmount,
        "base_grand_total": baseGrandTotal,
        "base_rounding_adjustment": baseRoundingAdjustment,
        "base_rounded_total": baseRoundedTotal,
        "base_in_words": baseInWords,
        "grand_total": grandTotal,
        "rounding_adjustment": roundingAdjustment,
        "rounded_total": roundedTotal,
        "in_words": inWords,
        "disable_rounded_total": disableRoundedTotal,
        "tc_name": tcName,
        "terms": terms,
        "transporter": transporter,
        "driver": driver,
        "lr_no": lrNo,
        "vehicle_no": vehicleNo,
        "transporter_name": transporterName,
        "driver_name": driverName,
        "lr_date": "${lrDate.year.toString().padLeft(4, '0')}-${lrDate.month.toString().padLeft(2, '0')}-${lrDate.day.toString().padLeft(2, '0')}",
        "campaign": campaign,
        "source": source,
        "is_internal_customer": isInternalCustomer,
        "represents_company": representsCompany,
        "inter_company_reference": interCompanyReference,
        "per_billed": perBilled,
        "customer_group": customerGroup,
        "territory": territory,
        "letter_head": letterHead,
        "select_print_heading": selectPrintHeading,
        "language": language,
        "print_without_amount": printWithoutAmount,
        "group_same_items": groupSameItems,
        "status": status,
        "per_installed": perInstalled,
        "installation_status": installationStatus,
        "per_returned": perReturned,
        "excise_page": excisePage,
        "instructions": instructions,
        "auto_repeat": autoRepeat,
        "sales_partner": salesPartner,
        "amount_eligible_for_commission": amountEligibleForCommission,
        "commission_rate": commissionRate,
        "total_commission": totalCommission,
        "_user_tags": userTags,
        "_comments": comments,
        "_assign": assign,
        "_liked_by": likedBy,
        "_seen": seen,
        "customer_gstin": customerGstin,
        "place_of_supply": placeOfSupply,
        "billing_address_gstin": billingAddressGstin,
        "company_gstin": companyGstin,
        "gst_transporter_id": gstTransporterId,
        "distance": distance,
        "mode_of_transport": modeOfTransport,
        "gst_vehicle_type": gstVehicleType,
        "gst_category": gstCategory,
        "ewaybill": ewaybill,
        "port_code": portCode,
        "shipping_bill_date": shippingBillDate,
        "shipping_bill_number": shippingBillNumber,
    };
}
