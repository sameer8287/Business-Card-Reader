// To parse this JSON data, do
//
//     final deliverOrderModel = deliverOrderModelFromJson(jsonString);

import 'dart:convert';

DeliverOrderModel deliverOrderModelFromJson(String str) => DeliverOrderModel.fromJson(json.decode(str));

String deliverOrderModelToJson(DeliverOrderModel data) => json.encode(data.toJson());

class DeliverOrderModel {
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
    String orderType;
    int skipDeliveryNote;
    dynamic amendedFrom;
    String company;
    DateTime transactionDate;
    DateTime deliveryDate;
    String poNo;
    dynamic poDate;
    dynamic taxId;
    dynamic costCenter;
    dynamic project;
    String customerAddress;
    String addressDisplay;
    String contactPerson;
    String contactDisplay;
    String contactPhone;
    String contactMobile;
    String contactEmail;
    String companyAddress;
    String companyAddressDisplay;
    String shippingAddressName;
    String shippingAddress;
    dynamic dispatchAddressName;
    dynamic dispatchAddress;
    String customerGroup;
    String territory;
    String currency;
    double conversionRate;
    String sellingPriceList;
    String priceListCurrency;
    double plcConversionRate;
    int ignorePricingRule;
    String setWarehouse;
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
    double baseTotalTaxesAndCharges;
    double totalTaxesAndCharges;
    int loyaltyPoints;
    double loyaltyAmount;
    dynamic couponCode;
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
    double advancePaid;
    int disableRoundedTotal;
    dynamic paymentTermsTemplate;
    dynamic tcName;
    dynamic terms;
    int isInternalCustomer;
    dynamic representsCompany;
    dynamic interCompanyOrderReference;
    String partyAccountCurrency;
    dynamic source;
    dynamic campaign;
    String language;
    dynamic letterHead;
    dynamic selectPrintHeading;
    int groupSameItems;
    String status;
    String deliveryStatus;
    double perDelivered;
    double perBilled;
    double perPicked;
    String billingStatus;
    String salesPartner;
    double amountEligibleForCommission;
    double commissionRate;
    double totalCommission;
    dynamic fromDate;
    dynamic toDate;
    dynamic autoRepeat;
    dynamic userTags;
    dynamic comments;
    dynamic assign;
    dynamic likedBy;
    String seen;
    String billingAddressGstin;
    String companyGstin;
    String customerGstin;
    String placeOfSupply;
    dynamic workflowState;
    dynamic transporter;
    dynamic vehicleArrivalDate;
    dynamic weighbridgeSlip;
    dynamic builtyNo;
    dynamic vehicleNo;
    dynamic driver;
    dynamic driverNo;

    DeliverOrderModel({
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
        required this.orderType,
        required this.skipDeliveryNote,
        this.amendedFrom,
        required this.company,
        required this.transactionDate,
        required this.deliveryDate,
        required this.poNo,
        this.poDate,
        this.taxId,
        this.costCenter,
        this.project,
        required this.customerAddress,
        required this.addressDisplay,
        required this.contactPerson,
        required this.contactDisplay,
        required this.contactPhone,
        required this.contactMobile,
        required this.contactEmail,
        required this.companyAddress,
        required this.companyAddressDisplay,
        required this.shippingAddressName,
        required this.shippingAddress,
        this.dispatchAddressName,
        this.dispatchAddress,
        required this.customerGroup,
        required this.territory,
        required this.currency,
        required this.conversionRate,
        required this.sellingPriceList,
        required this.priceListCurrency,
        required this.plcConversionRate,
        required this.ignorePricingRule,
        required this.setWarehouse,
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
        required this.baseTotalTaxesAndCharges,
        required this.totalTaxesAndCharges,
        required this.loyaltyPoints,
        required this.loyaltyAmount,
        this.couponCode,
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
        required this.advancePaid,
        required this.disableRoundedTotal,
        this.paymentTermsTemplate,
        this.tcName,
        this.terms,
        required this.isInternalCustomer,
        this.representsCompany,
        this.interCompanyOrderReference,
        required this.partyAccountCurrency,
        this.source,
        this.campaign,
        required this.language,
        this.letterHead,
        this.selectPrintHeading,
        required this.groupSameItems,
        required this.status,
        required this.deliveryStatus,
        required this.perDelivered,
        required this.perBilled,
        required this.perPicked,
        required this.billingStatus,
        required this.salesPartner,
        required this.amountEligibleForCommission,
        required this.commissionRate,
        required this.totalCommission,
        this.fromDate,
        this.toDate,
        this.autoRepeat,
        this.userTags,
        this.comments,
        this.assign,
        this.likedBy,
        required this.seen,
        required this.billingAddressGstin,
        required this.companyGstin,
        required this.customerGstin,
        required this.placeOfSupply,
        this.workflowState,
        this.transporter,
        this.vehicleArrivalDate,
        this.weighbridgeSlip,
        this.builtyNo,
        this.vehicleNo,
        this.driver,
        this.driverNo,
    });

    factory DeliverOrderModel.fromJson(Map<String, dynamic> json) => DeliverOrderModel(
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
        orderType: json["order_type"] ?? "",
        skipDeliveryNote: json["skip_delivery_note"] ?? "",
        amendedFrom: json["amended_from"] ?? "",
        company: json["company"] ?? "",
        transactionDate: DateTime.parse(json["transaction_date"] ?? ""),
        deliveryDate: DateTime.parse(json["delivery_date"] ?? ""),
        poNo: json["po_no"] ?? "",
        poDate: json["po_date"] ?? "",
        taxId: json["tax_id"] ?? "",
        costCenter: json["cost_center"] ?? "",
        project: json["project"] ?? "",
        customerAddress: json["customer_address"] ?? "",
        addressDisplay: json["address_display"] ?? "",
        contactPerson: json["contact_person"] ?? "",
        contactDisplay: json["contact_display"] ?? "",
        contactPhone: json["contact_phone"] ?? "",
        contactMobile: json["contact_mobile"] ?? "",
        contactEmail: json["contact_email"] ?? "",
        companyAddress: json["company_address"] ?? "",
        companyAddressDisplay: json["company_address_display"] ?? "",
        shippingAddressName: json["shipping_address_name"] ?? "",
        shippingAddress: json["shipping_address"] ?? "",
        dispatchAddressName: json["dispatch_address_name"] ?? "",
        dispatchAddress: json["dispatch_address"] ?? "",
        customerGroup: json["customer_group"] ?? "",
        territory: json["territory"] ?? "",
        currency: json["currency"] ?? "",
        conversionRate: json["conversion_rate"] ?? "",
        sellingPriceList: json["selling_price_list"] ?? "",
        priceListCurrency: json["price_list_currency"] ?? "",
        plcConversionRate: json["plc_conversion_rate"] ?? "",
        ignorePricingRule: json["ignore_pricing_rule"] ?? "",
        setWarehouse: json["set_warehouse"] ?? "",
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
        baseTotalTaxesAndCharges: json["base_total_taxes_and_charges"] ?.toDouble(),
        totalTaxesAndCharges: json["total_taxes_and_charges"] ?.toDouble(),
        loyaltyPoints: json["loyalty_points"] ?? "",
        loyaltyAmount: json["loyalty_amount"] ?? "",
        couponCode: json["coupon_code"] ?? "",
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
        advancePaid: json["advance_paid"] ?? "",
        disableRoundedTotal: json["disable_rounded_total"] ?? "",
        paymentTermsTemplate: json["payment_terms_template"] ?? "",
        tcName: json["tc_name"] ?? "",
        terms: json["terms"] ?? "",
        isInternalCustomer: json["is_internal_customer"] ?? "",
        representsCompany: json["represents_company"] ?? "",
        interCompanyOrderReference: json["inter_company_order_reference"] ?? "",
        partyAccountCurrency: json["party_account_currency"] ?? "",
        source: json["source"] ?? "",
        campaign: json["campaign"] ?? "",
        language: json["language"] ?? "",
        letterHead: json["letter_head"] ?? "",
        selectPrintHeading: json["select_print_heading"] ?? "",
        groupSameItems: json["group_same_items"] ?? "",
        status: json["status"] ?? "",
        deliveryStatus: json["delivery_status"] ?? "",
        perDelivered: json["per_delivered"] ?? "",
        perBilled: json["per_billed"] ?? "",
        perPicked: json["per_picked"] ?? "",
        billingStatus: json["billing_status"] ?? "",
        salesPartner: json["sales_partner"] ?? "",
        amountEligibleForCommission: json["amount_eligible_for_commission"] ?? "",
        commissionRate: json["commission_rate"] ?? "",
        totalCommission: json["total_commission"] ?? "",
        fromDate: json["from_date"] ?? "",
        toDate: json["to_date"] ?? "",
        autoRepeat: json["auto_repeat"] ?? "",
        userTags: json["_user_tags"] ?? "",
        comments: json["_comments"] ?? "",
        assign: json["_assign"] ?? "",
        likedBy: json["_liked_by"] ?? "",
        seen: json["_seen"] ?? "",
        billingAddressGstin: json["billing_address_gstin"] ?? "",
        companyGstin: json["company_gstin"] ?? "",
        customerGstin: json["customer_gstin"] ?? "",
        placeOfSupply: json["place_of_supply"] ?? "",
        workflowState: json["workflow_state"] ?? "",
        transporter: json["transporter"] ?? "",
        vehicleArrivalDate: json["vehicle_arrival_date"] ?? "",
        weighbridgeSlip: json["weighbridge_slip"] ?? "",
        builtyNo: json["builty_no"] ?? "",
        vehicleNo: json["vehicle_no"] ?? "",
        driver: json["driver"] ?? "",
        driverNo: json["driver_no"] ?? "",
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
        "order_type": orderType,
        "skip_delivery_note": skipDeliveryNote,
        "amended_from": amendedFrom,
        "company": company,
        "transaction_date": "${transactionDate.year.toString().padLeft(4, '0')}-${transactionDate.month.toString().padLeft(2, '0')}-${transactionDate.day.toString().padLeft(2, '0')}",
        "delivery_date": "${deliveryDate.year.toString().padLeft(4, '0')}-${deliveryDate.month.toString().padLeft(2, '0')}-${deliveryDate.day.toString().padLeft(2, '0')}",
        "po_no": poNo,
        "po_date": poDate,
        "tax_id": taxId,
        "cost_center": costCenter,
        "project": project,
        "customer_address": customerAddress,
        "address_display": addressDisplay,
        "contact_person": contactPerson,
        "contact_display": contactDisplay,
        "contact_phone": contactPhone,
        "contact_mobile": contactMobile,
        "contact_email": contactEmail,
        "company_address": companyAddress,
        "company_address_display": companyAddressDisplay,
        "shipping_address_name": shippingAddressName,
        "shipping_address": shippingAddress,
        "dispatch_address_name": dispatchAddressName,
        "dispatch_address": dispatchAddress,
        "customer_group": customerGroup,
        "territory": territory,
        "currency": currency,
        "conversion_rate": conversionRate,
        "selling_price_list": sellingPriceList,
        "price_list_currency": priceListCurrency,
        "plc_conversion_rate": plcConversionRate,
        "ignore_pricing_rule": ignorePricingRule,
        "set_warehouse": setWarehouse,
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
        "base_total_taxes_and_charges": baseTotalTaxesAndCharges,
        "total_taxes_and_charges": totalTaxesAndCharges,
        "loyalty_points": loyaltyPoints,
        "loyalty_amount": loyaltyAmount,
        "coupon_code": couponCode,
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
        "advance_paid": advancePaid,
        "disable_rounded_total": disableRoundedTotal,
        "payment_terms_template": paymentTermsTemplate,
        "tc_name": tcName,
        "terms": terms,
        "is_internal_customer": isInternalCustomer,
        "represents_company": representsCompany,
        "inter_company_order_reference": interCompanyOrderReference,
        "party_account_currency": partyAccountCurrency,
        "source": source,
        "campaign": campaign,
        "language": language,
        "letter_head": letterHead,
        "select_print_heading": selectPrintHeading,
        "group_same_items": groupSameItems,
        "status": status,
        "delivery_status": deliveryStatus,
        "per_delivered": perDelivered,
        "per_billed": perBilled,
        "per_picked": perPicked,
        "billing_status": billingStatus,
        "sales_partner": salesPartner,
        "amount_eligible_for_commission": amountEligibleForCommission,
        "commission_rate": commissionRate,
        "total_commission": totalCommission,
        "from_date": fromDate,
        "to_date": toDate,
        "auto_repeat": autoRepeat,
        "_user_tags": userTags,
        "_comments": comments,
        "_assign": assign,
        "_liked_by": likedBy,
        "_seen": seen,
        "billing_address_gstin": billingAddressGstin,
        "company_gstin": companyGstin,
        "customer_gstin": customerGstin,
        "place_of_supply": placeOfSupply,
        "workflow_state": workflowState,
        "transporter": transporter,
        "vehicle_arrival_date": vehicleArrivalDate,
        "weighbridge_slip": weighbridgeSlip,
        "builty_no": builtyNo,
        "vehicle_no": vehicleNo,
        "driver": driver,
        "driver_no": driverNo,
    };
}
