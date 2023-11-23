// To parse this JSON data, do
//
//     final salesContractModel = salesContractModelFromJson(jsonString);

import 'dart:convert';

SalesContractModel salesContractModelFromJson(String str) => SalesContractModel.fromJson(json.decode(str));

String salesContractModelToJson(SalesContractModel data) => json.encode(data.toJson());

class SalesContractModel {
    String name;
    String creation;
    String modified;
    String modifiedBy;
    String owner;
    int docstatus;
    dynamic parent;
    dynamic parentfield;
    dynamic parenttype;
    int idx;
    String title;
    String namingSeries;
    String quotationTo;
    String partyName;
    String customerName;
    dynamic amendedFrom;
    String company;
    DateTime transactionDate;
    dynamic validTill;
    String orderType;
    String customerAddress;
    String addressDisplay;
    String contactPerson;
    String contactDisplay;
    String contactMobile;
    String contactEmail;
    String shippingAddressName;
    dynamic shippingAddress;
    String companyAddress;
    String companyAddressDisplay;
    String customerGroup;
    String territory;
    String currency;
    double conversionRate;
    String sellingPriceList;
    String priceListCurrency;
    double plcConversionRate;
    int ignorePricingRule;
    double totalQty;
    double baseTotal;
    double baseNetTotal;
    double total;
    double netTotal;
    double totalNetWeight;
    String taxCategory;
    dynamic shippingRule;
    String taxesAndCharges;
    String otherChargesCalculation;
    double baseTotalTaxesAndCharges;
    double totalTaxesAndCharges;
    dynamic couponCode;
    dynamic referralSalesPartner;
    String applyDiscountOn;
    double baseDiscountAmount;
    double additionalDiscountPercentage;
    double discountAmount;
    double baseGrandTotal;
    double baseRoundingAdjustment;
    String baseInWords;
    double baseRoundedTotal;
    double grandTotal;
    double roundingAdjustment;
    double roundedTotal;
    String inWords;
    dynamic paymentTermsTemplate;
    dynamic tcName;
    dynamic terms;
    dynamic letterHead;
    int groupSameItems;
    dynamic selectPrintHeading;
    String language;
    String autoRepeat;
    dynamic campaign;
    dynamic source;
    dynamic orderLostReason;
    String status;
    dynamic enqDet;
    dynamic supplierQuotation;
    dynamic opportunity;
    dynamic userTags;
    dynamic comments;
    dynamic assign;
    dynamic likedBy;
    String workflowState;
    dynamic customerPoNumber;
    String deliveryFrom;
    String salesPartner;
    dynamic customerPoAttachments;
    dynamic deliveryTill;
    dynamic billingAddressGstin;
    dynamic customerGstin;
    String placeOfSupply;
    String companyGstin;
    int numberOfDays;
    dynamic poNo;
    String dispatchStatusAsPerSo;
    double dispatchedQuantity;
    double deliveryPercentage;
    String station;
    String transportTypes;
    String transportType;
    double remainingBargainLimit;
    int isExFactoryCustomer;
    dynamic extensionBy;
    int noOfDaysExtended;

    SalesContractModel({
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
        required this.quotationTo,
        required this.partyName,
        required this.customerName,
        this.amendedFrom,
        required this.company,
        required this.transactionDate,
        this.validTill,
        required this.orderType,
        required this.customerAddress,
        required this.addressDisplay,
        required this.contactPerson,
        required this.contactDisplay,
        required this.contactMobile,
        required this.contactEmail,
        required this.shippingAddressName,
        this.shippingAddress,
        required this.companyAddress,
        required this.companyAddressDisplay,
        required this.customerGroup,
        required this.territory,
        required this.currency,
        required this.conversionRate,
        required this.sellingPriceList,
        required this.priceListCurrency,
        required this.plcConversionRate,
        required this.ignorePricingRule,
        required this.totalQty,
        required this.baseTotal,
        required this.baseNetTotal,
        required this.total,
        required this.netTotal,
        required this.totalNetWeight,
        required this.taxCategory,
        this.shippingRule,
        required this.taxesAndCharges,
        required this.otherChargesCalculation,
        required this.baseTotalTaxesAndCharges,
        required this.totalTaxesAndCharges,
        this.couponCode,
        this.referralSalesPartner,
        required this.applyDiscountOn,
        required this.baseDiscountAmount,
        required this.additionalDiscountPercentage,
        required this.discountAmount,
        required this.baseGrandTotal,
        required this.baseRoundingAdjustment,
        required this.baseInWords,
        required this.baseRoundedTotal,
        required this.grandTotal,
        required this.roundingAdjustment,
        required this.roundedTotal,
        required this.inWords,
        this.paymentTermsTemplate,
        this.tcName,
        this.terms,
        this.letterHead,
        required this.groupSameItems,
        this.selectPrintHeading,
        required this.language,
        required this.autoRepeat,
        this.campaign,
        this.source,
        this.orderLostReason,
        required this.status,
        this.enqDet,
        this.supplierQuotation,
        this.opportunity,
        this.userTags,
        this.comments,
        this.assign,
        this.likedBy,
        required this.workflowState,
        this.customerPoNumber,
        required this.deliveryFrom,
        required this.salesPartner,
        this.customerPoAttachments,
        this.deliveryTill,
        this.billingAddressGstin,
        this.customerGstin,
        required this.placeOfSupply,
        required this.companyGstin,
        required this.numberOfDays,
        this.poNo,
        required this.dispatchStatusAsPerSo,
        required this.dispatchedQuantity,
        required this.deliveryPercentage,
        required this.station,
        required this.transportTypes,
        required this.transportType,
        required this.remainingBargainLimit,
        required this.isExFactoryCustomer,
        this.extensionBy,
        required this.noOfDaysExtended,
    });

    factory SalesContractModel.fromJson(Map<String, dynamic> json) => SalesContractModel(
        name: json["name"] ?? "",
        creation: json["creation"] ?? "",
        modified: json["modified"] ?? "",
        modifiedBy: json["modified_by"] ?? "",
        owner: json["owner"] ?? "",
        docstatus: json["docstatus"] ?? "",
        parent: json["parent"] ?? "",
        parentfield: json["parentfield"] ?? "",
        parenttype: json["parenttype"] ?? "",
        idx: json["idx"] ?? "",
        title: json["title"] ?? "",
        namingSeries: json["naming_series"] ?? "",
        quotationTo: json["quotation_to"] ?? "",
        partyName: json["party_name"] ?? "",
        customerName: json["customer_name"] ?? "",
        amendedFrom: json["amended_from"] ?? "",
        company: json["company"] ?? "",
        transactionDate: DateTime.parse(json["transaction_date"] ?? ""),
        validTill: json["valid_till"] ?? "",
        orderType: json["order_type"] ?? "",
        customerAddress: json["customer_address"] ?? "",
        addressDisplay: json["address_display"] ?? "",
        contactPerson: json["contact_person"] ?? "",
        contactDisplay: json["contact_display"] ?? "",
        contactMobile: json["contact_mobile"] ?? "",
        contactEmail: json["contact_email"] ?? "",
        shippingAddressName: json["shipping_address_name"] ?? "",
        shippingAddress: json["shipping_address"] ?? "",
        companyAddress: json["company_address"] ?? "",
        companyAddressDisplay: json["company_address_display"] ?? "",
        customerGroup: json["customer_group"] ?? "",
        territory: json["territory"] ?? "",
        currency: json["currency"] ?? "",
        conversionRate: json["conversion_rate"] ?? "",
        sellingPriceList: json["selling_price_list"] ?? "",
        priceListCurrency: json["price_list_currency"] ?? "",
        plcConversionRate: json["plc_conversion_rate"] ?? "",
        ignorePricingRule: json["ignore_pricing_rule"] ?? "",
        totalQty: json["total_qty"] ?? "",
        baseTotal: json["base_total"] ?? "",
        baseNetTotal: json["base_net_total"] ?? "",
        total: json["total"] ?? "",
        netTotal: json["net_total"] ?? "",
        totalNetWeight: json["total_net_weight"] ?? "",
        taxCategory: json["tax_category"] ?? "",
        shippingRule: json["shipping_rule"] ?? "",
        taxesAndCharges: json["taxes_and_charges"] ?? "",
        otherChargesCalculation: json["other_charges_calculation"] ?? "",
        baseTotalTaxesAndCharges: json["base_total_taxes_and_charges"] ?? "",
        totalTaxesAndCharges: json["total_taxes_and_charges"] ?? "",
        couponCode: json["coupon_code"] ?? "",
        referralSalesPartner: json["referral_sales_partner"] ?? "",
        applyDiscountOn: json["apply_discount_on"] ?? "",
        baseDiscountAmount: json["base_discount_amount"] ?? "",
        additionalDiscountPercentage: json["additional_discount_percentage"] ?? "",
        discountAmount: json["discount_amount"] ?? "",
        baseGrandTotal: json["base_grand_total"] ?? "",
        baseRoundingAdjustment: json["base_rounding_adjustment"] ?? "",
        baseInWords: json["base_in_words"] ?? "",
        baseRoundedTotal: json["base_rounded_total"] ?? "",
        grandTotal: json["grand_total"] ?? "",
        roundingAdjustment: json["rounding_adjustment"] ?? "",
        roundedTotal: json["rounded_total"] ?? "",
        inWords: json["in_words"] ?? "",
        paymentTermsTemplate: json["payment_terms_template"] ?? "",
        tcName: json["tc_name"] ?? "",
        terms: json["terms"] ?? "",
        letterHead: json["letter_head"] ?? "",
        groupSameItems: json["group_same_items"] ?? "",
        selectPrintHeading: json["select_print_heading"] ?? "",
        language: json["language"] ?? "",
        autoRepeat: json["auto_repeat"] ?? "",
        campaign: json["campaign"] ?? "",
        source: json["source"] ?? "",
        orderLostReason: json["order_lost_reason"] ?? "",
        status: json["status"] ?? "",
        enqDet: json["enq_det"] ?? "",
        supplierQuotation: json["supplier_quotation"] ?? "",
        opportunity: json["opportunity"] ?? "",
        userTags: json["_user_tags"] ?? "",
        comments: json["_comments"] ?? "",
        assign: json["_assign"] ?? "",
        likedBy: json["_liked_by"] ?? "",
        workflowState: json["workflow_state"] ?? "",
        customerPoNumber: json["customer_po_number"] ?? "",
        deliveryFrom: json["delivery_from"] ?? "",
        salesPartner: json["sales_partner"] ?? "",
        customerPoAttachments: json["customer_po_attachments"] ?? "",
        deliveryTill: json["delivery_till"] ?? "",
        billingAddressGstin: json["billing_address_gstin"] ?? "",
        customerGstin: json["customer_gstin"] ?? "",
        placeOfSupply: json["place_of_supply"] ?? "",
        companyGstin: json["company_gstin"] ?? "",
        numberOfDays: json["number_of_days"] ?? "",
        poNo: json["po_no"] ?? "",
        dispatchStatusAsPerSo: json["dispatch_status_as_per_so"] ?? "",
        dispatchedQuantity: json["dispatched_quantity"] ?? "",
        deliveryPercentage: json["delivery_percentage"] ?? "",
        station: json["station"] ?? "",
        transportTypes: json["transport_types"] ?? "",
        transportType: json["transport_type"] ?? "",
        remainingBargainLimit: json["remaining_bargain_limit"] .toDouble(),
        isExFactoryCustomer: json["is_ex_factory_customer"] ?? "",
        extensionBy: json["extension_by"] ?? "",
        noOfDaysExtended: json["no_of_days_extended"] ?? "",
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "creation": creation.toString(),
        "modified": modified.toString(),
        "modified_by": modifiedBy,
        "owner": owner,
        "docstatus": docstatus,
        "parent": parent,
        "parentfield": parentfield,
        "parenttype": parenttype,
        "idx": idx,
        "title": title,
        "naming_series": namingSeries,
        "quotation_to": quotationTo,
        "party_name": partyName,
        "customer_name": customerName,
        "amended_from": amendedFrom,
        "company": company,
        "transaction_date": "${transactionDate.year.toString().padLeft(4, '0')}-${transactionDate.month.toString().padLeft(2, '0')}-${transactionDate.day.toString().padLeft(2, '0')}",
        "valid_till": validTill,
        "order_type": orderType,
        "customer_address": customerAddress,
        "address_display": addressDisplay,
        "contact_person": contactPerson,
        "contact_display": contactDisplay,
        "contact_mobile": contactMobile,
        "contact_email": contactEmail,
        "shipping_address_name": shippingAddressName,
        "shipping_address": shippingAddress,
        "company_address": companyAddress,
        "company_address_display": companyAddressDisplay,
        "customer_group": customerGroup,
        "territory": territory,
        "currency": currency,
        "conversion_rate": conversionRate,
        "selling_price_list": sellingPriceList,
        "price_list_currency": priceListCurrency,
        "plc_conversion_rate": plcConversionRate,
        "ignore_pricing_rule": ignorePricingRule,
        "total_qty": totalQty,
        "base_total": baseTotal,
        "base_net_total": baseNetTotal,
        "total": total,
        "net_total": netTotal,
        "total_net_weight": totalNetWeight,
        "tax_category": taxCategory,
        "shipping_rule": shippingRule,
        "taxes_and_charges": taxesAndCharges,
        "other_charges_calculation": otherChargesCalculation,
        "base_total_taxes_and_charges": baseTotalTaxesAndCharges,
        "total_taxes_and_charges": totalTaxesAndCharges,
        "coupon_code": couponCode,
        "referral_sales_partner": referralSalesPartner,
        "apply_discount_on": applyDiscountOn,
        "base_discount_amount": baseDiscountAmount,
        "additional_discount_percentage": additionalDiscountPercentage,
        "discount_amount": discountAmount,
        "base_grand_total": baseGrandTotal,
        "base_rounding_adjustment": baseRoundingAdjustment,
        "base_in_words": baseInWords,
        "base_rounded_total": baseRoundedTotal,
        "grand_total": grandTotal,
        "rounding_adjustment": roundingAdjustment,
        "rounded_total": roundedTotal,
        "in_words": inWords,
        "payment_terms_template": paymentTermsTemplate,
        "tc_name": tcName,
        "terms": terms,
        "letter_head": letterHead,
        "group_same_items": groupSameItems,
        "select_print_heading": selectPrintHeading,
        "language": language,
        "auto_repeat": autoRepeat,
        "campaign": campaign,
        "source": source,
        "order_lost_reason": orderLostReason,
        "status": status,
        "enq_det": enqDet,
        "supplier_quotation": supplierQuotation,
        "opportunity": opportunity,
        "_user_tags": userTags,
        "_comments": comments,
        "_assign": assign,
        "_liked_by": likedBy,
        "workflow_state": workflowState,
        "customer_po_number": customerPoNumber,
        "delivery_from": deliveryFrom,
        "sales_partner": salesPartner,
        "customer_po_attachments": customerPoAttachments,
        "delivery_till": deliveryTill,
        "billing_address_gstin": billingAddressGstin,
        "customer_gstin": customerGstin,
        "place_of_supply": placeOfSupply,
        "company_gstin": companyGstin,
        "number_of_days": numberOfDays,
        "po_no": poNo,
        "dispatch_status_as_per_so": dispatchStatusAsPerSo,
        "dispatched_quantity": dispatchedQuantity,
        "delivery_percentage": deliveryPercentage,
        "station": station,
        "transport_types": transportTypes,
        "transport_type": transportType,
        "remaining_bargain_limit": remainingBargainLimit,
        "is_ex_factory_customer": isExFactoryCustomer,
        "extension_by": extensionBy,
        "no_of_days_extended": noOfDaysExtended,
    };
}
