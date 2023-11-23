// To parse this JSON data, do
//
//     final salesInvoiceModel = salesInvoiceModelFromJson(jsonString);

import 'dart:convert';

SalesInvoiceModel salesInvoiceModelFromJson(String str) =>
    SalesInvoiceModel.fromJson(json.decode(str));

String salesInvoiceModelToJson(SalesInvoiceModel data) =>
    json.encode(data.toJson());

class SalesInvoiceModel {
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
  dynamic taxId;
  dynamic posProfile;
  int isPos;
  int isConsolidated;
  int isReturn;
  int isDebitNote;
  int updateBilledAmountInSalesOrder;
  String company;
  dynamic companyTaxId;
  DateTime postingDate;
  String postingTime;
  int setPostingTime;
  DateTime dueDate;
  dynamic returnAgainst;
  dynamic amendedFrom;
  dynamic project;
  dynamic costCenter;
  String poNo;
  dynamic poDate;
  String customerAddress;
  String addressDisplay;
  String contactPerson;
  String contactDisplay;
  String contactMobile;
  String contactEmail;
  String territory;
  String shippingAddressName;
  String shippingAddress;
  String companyAddress;
  String companyAddressDisplay;
  dynamic dispatchAddressName;
  dynamic dispatchAddress;
  String currency;
  double conversionRate;
  String sellingPriceList;
  String priceListCurrency;
  double plcConversionRate;
  int ignorePricingRule;
  String setWarehouse;
  dynamic setTargetWarehouse;
  int updateStock;
  dynamic scanBarcode;
  double totalBillingAmount;
  double totalBillingHours;
  double totalQty;
  double baseTotal;
  double baseNetTotal;
  double totalNetWeight;
  double total;
  double netTotal;
  String taxesAndCharges;
  dynamic shippingRule;
  String taxCategory;
  String otherChargesCalculation;
  double baseTotalTaxesAndCharges;
  double totalTaxesAndCharges;
  int loyaltyPoints;
  double loyaltyAmount;
  int redeemLoyaltyPoints;
  dynamic loyaltyProgram;
  dynamic loyaltyRedemptionAccount;
  dynamic loyaltyRedemptionCostCenter;
  String applyDiscountOn;
  int isCashOrNonTradeDiscount;
  double baseDiscountAmount;
  dynamic additionalDiscountAccount;
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
  double totalAdvance;
  double outstandingAmount;
  int disableRoundedTotal;
  double writeOffAmount;
  double baseWriteOffAmount;
  int writeOffOutstandingAmountAutomatically;
  dynamic writeOffAccount;
  dynamic writeOffCostCenter;
  int allocateAdvancesAutomatically;
  int ignoreDefaultPaymentTermsTemplate;
  dynamic paymentTermsTemplate;
  dynamic cashBankAccount;
  double basePaidAmount;
  double paidAmount;
  double baseChangeAmount;
  double changeAmount;
  dynamic accountForChangeAmount;
  dynamic tcName;
  dynamic terms;
  dynamic letterHead;
  int groupSameItems;
  dynamic selectPrintHeading;
  String language;
  String status;
  dynamic interCompanyInvoiceReference;
  dynamic representsCompany;
  String customerGroup;
  dynamic campaign;
  int isInternalCustomer;
  int isDiscounted;
  dynamic source;
  String debitTo;
  String partyAccountCurrency;
  String isOpening;
  String cFormApplicable;
  dynamic cFormNo;
  dynamic unrealizedProfitLossAccount;
  String remarks;
  String salesPartner;
  double amountEligibleForCommission;
  double commissionRate;
  double totalCommission;
  dynamic fromDate;
  dynamic toDate;
  dynamic autoRepeat;
  String againstIncomeAccount;
  dynamic userTags;
  dynamic comments;
  dynamic assign;
  dynamic likedBy;
  String seen;
  int irnCancelled;
  dynamic irn;
  int ewayBillCancelled;
  dynamic ewaybill;
  dynamic ewayBillValidity;
  String billingAddressGstin;
  String customerGstin;
  String placeOfSupply;
  String companyGstin;
  dynamic transporter;
  String gstCategory;
  dynamic ackDate;
  dynamic ackNo;
  double distance;
  dynamic driver;
  dynamic driverName;
  dynamic ecommerceGstin;
  String einvoiceStatus;
  String exportType;
  dynamic failureDescription;
  dynamic gstTransporterId;
  String gstVehicleType;
  String invoiceCopy;
  dynamic irnCancelDate;
  DateTime lrDate;
  dynamic lrNo;
  String modeOfTransport;
  dynamic portCode;
  dynamic qrcodeImage;
  String reasonForIssuingDocument;
  String reverseCharge;
  dynamic shippingBillDate;
  dynamic shippingBillNumber;
  dynamic signedEinvoice;
  dynamic signedQrCode;
  dynamic transporterName;
  dynamic vehicleNo;

  SalesInvoiceModel({
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
    this.taxId,
    this.posProfile,
    required this.isPos,
    required this.isConsolidated,
    required this.isReturn,
    required this.isDebitNote,
    required this.updateBilledAmountInSalesOrder,
    required this.company,
    this.companyTaxId,
    required this.postingDate,
    required this.postingTime,
    required this.setPostingTime,
    required this.dueDate,
    this.returnAgainst,
    this.amendedFrom,
    this.project,
    this.costCenter,
    required this.poNo,
    this.poDate,
    required this.customerAddress,
    required this.addressDisplay,
    required this.contactPerson,
    required this.contactDisplay,
    required this.contactMobile,
    required this.contactEmail,
    required this.territory,
    required this.shippingAddressName,
    required this.shippingAddress,
    required this.companyAddress,
    required this.companyAddressDisplay,
    this.dispatchAddressName,
    this.dispatchAddress,
    required this.currency,
    required this.conversionRate,
    required this.sellingPriceList,
    required this.priceListCurrency,
    required this.plcConversionRate,
    required this.ignorePricingRule,
    required this.setWarehouse,
    this.setTargetWarehouse,
    required this.updateStock,
    this.scanBarcode,
    required this.totalBillingAmount,
    required this.totalBillingHours,
    required this.totalQty,
    required this.baseTotal,
    required this.baseNetTotal,
    required this.totalNetWeight,
    required this.total,
    required this.netTotal,
    required this.taxesAndCharges,
    this.shippingRule,
    required this.taxCategory,
    required this.otherChargesCalculation,
    required this.baseTotalTaxesAndCharges,
    required this.totalTaxesAndCharges,
    required this.loyaltyPoints,
    required this.loyaltyAmount,
    required this.redeemLoyaltyPoints,
    this.loyaltyProgram,
    this.loyaltyRedemptionAccount,
    this.loyaltyRedemptionCostCenter,
    required this.applyDiscountOn,
    required this.isCashOrNonTradeDiscount,
    required this.baseDiscountAmount,
    this.additionalDiscountAccount,
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
    required this.totalAdvance,
    required this.outstandingAmount,
    required this.disableRoundedTotal,
    required this.writeOffAmount,
    required this.baseWriteOffAmount,
    required this.writeOffOutstandingAmountAutomatically,
    this.writeOffAccount,
    this.writeOffCostCenter,
    required this.allocateAdvancesAutomatically,
    required this.ignoreDefaultPaymentTermsTemplate,
    this.paymentTermsTemplate,
    this.cashBankAccount,
    required this.basePaidAmount,
    required this.paidAmount,
    required this.baseChangeAmount,
    required this.changeAmount,
    this.accountForChangeAmount,
    this.tcName,
    this.terms,
    this.letterHead,
    required this.groupSameItems,
    this.selectPrintHeading,
    required this.language,
    required this.status,
    this.interCompanyInvoiceReference,
    this.representsCompany,
    required this.customerGroup,
    this.campaign,
    required this.isInternalCustomer,
    required this.isDiscounted,
    this.source,
    required this.debitTo,
    required this.partyAccountCurrency,
    required this.isOpening,
    required this.cFormApplicable,
    this.cFormNo,
    this.unrealizedProfitLossAccount,
    required this.remarks,
    required this.salesPartner,
    required this.amountEligibleForCommission,
    required this.commissionRate,
    required this.totalCommission,
    this.fromDate,
    this.toDate,
    this.autoRepeat,
    required this.againstIncomeAccount,
    this.userTags,
    this.comments,
    this.assign,
    this.likedBy,
    required this.seen,
    required this.irnCancelled,
    this.irn,
    required this.ewayBillCancelled,
    this.ewaybill,
    this.ewayBillValidity,
    required this.billingAddressGstin,
    required this.customerGstin,
    required this.placeOfSupply,
    required this.companyGstin,
    this.transporter,
    required this.gstCategory,
    this.ackDate,
    this.ackNo,
    required this.distance,
    this.driver,
    this.driverName,
    this.ecommerceGstin,
    required this.einvoiceStatus,
    required this.exportType,
    this.failureDescription,
    this.gstTransporterId,
    required this.gstVehicleType,
    required this.invoiceCopy,
    this.irnCancelDate,
    required this.lrDate,
    this.lrNo,
    required this.modeOfTransport,
    this.portCode,
    this.qrcodeImage,
    required this.reasonForIssuingDocument,
    required this.reverseCharge,
    this.shippingBillDate,
    this.shippingBillNumber,
    this.signedEinvoice,
    this.signedQrCode,
    this.transporterName,
    this.vehicleNo,
  });

  factory SalesInvoiceModel.fromJson(Map<String, dynamic> json) =>
      SalesInvoiceModel(
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
        taxId: json["tax_id"] ?? "",
        posProfile: json["pos_profile"] ?? "",
        isPos: json["is_pos"] ?? "",
        isConsolidated: json["is_consolidated"] ?? "",
        isReturn: json["is_return"] ?? "",
        isDebitNote: json["is_debit_note"] ?? "",
        updateBilledAmountInSalesOrder:
            json["update_billed_amount_in_sales_order"] ?? "",
        company: json["company"] ?? "",
        companyTaxId: json["company_tax_id"] ?? "",
        postingDate: DateTime.parse(json["posting_date"] ?? ""),
        postingTime: json["posting_time"] ?? "",
        setPostingTime: json["set_posting_time"] ?? "",
        dueDate: DateTime.parse(json["due_date"] ?? ""),
        returnAgainst: json["return_against"] ?? "",
        amendedFrom: json["amended_from"] ?? "",
        project: json["project"] ?? "",
        costCenter: json["cost_center"] ?? "",
        poNo: json["po_no"] ?? "",
        poDate: json["po_date"] ?? "",
        customerAddress: json["customer_address"] ?? "",
        addressDisplay: json["address_display"] ?? "",
        contactPerson: json["contact_person"] ?? "",
        contactDisplay: json["contact_display"] ?? "",
        contactMobile: json["contact_mobile"] ?? "",
        contactEmail: json["contact_email"] ?? "",
        territory: json["territory"] ?? "",
        shippingAddressName: json["shipping_address_name"] ?? "",
        shippingAddress: json["shipping_address"] ?? "",
        companyAddress: json["company_address"] ?? "",
        companyAddressDisplay: json["company_address_display"] ?? "",
        dispatchAddressName: json["dispatch_address_name"] ?? "",
        dispatchAddress: json["dispatch_address"] ?? "",
        currency: json["currency"] ?? "",
        conversionRate: json["conversion_rate"] ?? "",
        sellingPriceList: json["selling_price_list"] ?? "",
        priceListCurrency: json["price_list_currency"] ?? "",
        plcConversionRate: json["plc_conversion_rate"] ?? "",
        ignorePricingRule: json["ignore_pricing_rule"] ?? "",
        setWarehouse: json["set_warehouse"] ?? "",
        setTargetWarehouse: json["set_target_warehouse"] ?? "",
        updateStock: json["update_stock"] ?? "",
        scanBarcode: json["scan_barcode"] ?? "",
        totalBillingAmount: json["total_billing_amount"] ?? "",
        totalBillingHours: json["total_billing_hours"] ?? "",
        totalQty: json["total_qty"] ?? "",
        baseTotal: json["base_total"] ?? "",
        baseNetTotal: json["base_net_total"] ?? "",
        totalNetWeight: json["total_net_weight"] ?.toDouble(),
        total: json["total"] ?? "",
        netTotal: json["net_total"] ?? "",
        taxesAndCharges: json["taxes_and_charges"] ?? "",
        shippingRule: json["shipping_rule"] ?? "",
        taxCategory: json["tax_category"] ?? "",
        otherChargesCalculation: json["other_charges_calculation"] ?? "",
        baseTotalTaxesAndCharges:
            json["base_total_taxes_and_charges"] ?.toDouble(),
        totalTaxesAndCharges: json["total_taxes_and_charges"] ?.toDouble(),
        loyaltyPoints: json["loyalty_points"] ?? "",
        loyaltyAmount: json["loyalty_amount"] ?? "",
        redeemLoyaltyPoints: json["redeem_loyalty_points"] ?? "",
        loyaltyProgram: json["loyalty_program"] ?? "",
        loyaltyRedemptionAccount: json["loyalty_redemption_account"] ?? "",
        loyaltyRedemptionCostCenter: json["loyalty_redemption_cost_center"] ?? "",
        applyDiscountOn: json["apply_discount_on"] ?? "",
        isCashOrNonTradeDiscount: json["is_cash_or_non_trade_discount"] ?? "",
        baseDiscountAmount: json["base_discount_amount"] ?? "",
        additionalDiscountAccount: json["additional_discount_account"] ?? "",
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
        totalAdvance: json["total_advance"] ?? "",
        outstandingAmount: json["outstanding_amount"] ?? "",
        disableRoundedTotal: json["disable_rounded_total"] ?? "",
        writeOffAmount: json["write_off_amount"] ?? "",
        baseWriteOffAmount: json["base_write_off_amount"] ?? "",
        writeOffOutstandingAmountAutomatically:
            json["write_off_outstanding_amount_automatically"] ?? "",
        writeOffAccount: json["write_off_account"] ?? "",
        writeOffCostCenter: json["write_off_cost_center"] ?? "",
        allocateAdvancesAutomatically: json["allocate_advances_automatically"] ?? "",
        ignoreDefaultPaymentTermsTemplate:
            json["ignore_default_payment_terms_template"] ?? "",
        paymentTermsTemplate: json["payment_terms_template"] ?? "",
        cashBankAccount: json["cash_bank_account"] ?? "",
        basePaidAmount: json["base_paid_amount"] ?? "",
        paidAmount: json["paid_amount"] ?? "",
        baseChangeAmount: json["base_change_amount"] ?? "",
        changeAmount: json["change_amount"] ?? "",
        accountForChangeAmount: json["account_for_change_amount"] ?? "",
        tcName: json["tc_name"] ?? "",
        terms: json["terms"] ?? "",
        letterHead: json["letter_head"] ?? "",
        groupSameItems: json["group_same_items"] ?? "",
        selectPrintHeading: json["select_print_heading"] ?? "",
        language: json["language"] ?? "",
        status: json["status"] ?? "",
        interCompanyInvoiceReference: json["inter_company_invoice_reference"] ?? "",
        representsCompany: json["represents_company"] ?? "",
        customerGroup: json["customer_group"] ?? "",
        campaign: json["campaign"] ?? "",
        isInternalCustomer: json["is_internal_customer"] ?? "",
        isDiscounted: json["is_discounted"] ?? "",
        source: json["source"] ?? "",
        debitTo: json["debit_to"] ?? "",
        partyAccountCurrency: json["party_account_currency"] ?? "",
        isOpening: json["is_opening"] ?? "",
        cFormApplicable: json["c_form_applicable"] ?? "",
        cFormNo: json["c_form_no"] ?? "",
        unrealizedProfitLossAccount: json["unrealized_profit_loss_account"] ?? "",
        remarks: json["remarks"] ?? "",
        salesPartner: json["sales_partner"] ?? "",
        amountEligibleForCommission: json["amount_eligible_for_commission"] ?? "",
        commissionRate: json["commission_rate"] ?? "",
        totalCommission: json["total_commission"] ?? "",
        fromDate: json["from_date"] ?? "",
        toDate: json["to_date"] ?? "",
        autoRepeat: json["auto_repeat"] ?? "",
        againstIncomeAccount: json["against_income_account"] ?? "",
        userTags: json["_user_tags"] ?? "",
        comments: json["_comments"] ?? "",
        assign: json["_assign"] ?? "",
        likedBy: json["_liked_by"] ?? "",
        seen: json["_seen"] ?? "",
        irnCancelled: json["irn_cancelled"] ?? "",
        irn: json["irn"] ?? "",
        ewayBillCancelled: json["eway_bill_cancelled"] ?? "",
        ewaybill: json["ewaybill"] ?? "",
        ewayBillValidity: json["eway_bill_validity"] ?? "",
        billingAddressGstin: json["billing_address_gstin"] ?? "",
        customerGstin: json["customer_gstin"] ?? "",
        placeOfSupply: json["place_of_supply"] ?? "",
        companyGstin: json["company_gstin"] ?? "",
        transporter: json["transporter"] ?? "",
        gstCategory: json["gst_category"] ?? "",
        ackDate: json["ack_date"] ?? "",
        ackNo: json["ack_no"] ?? "",
        distance: json["distance"] ?? "",
        driver: json["driver"] ?? "",
        driverName: json["driver_name"] ?? "",
        ecommerceGstin: json["ecommerce_gstin"] ?? "",
        einvoiceStatus: json["einvoice_status"] ?? "",
        exportType: json["export_type"] ?? "",
        failureDescription: json["failure_description"] ?? "",
        gstTransporterId: json["gst_transporter_id"] ?? "",
        gstVehicleType: json["gst_vehicle_type"] ?? "",
        invoiceCopy: json["invoice_copy"] ?? "",
        irnCancelDate: json["irn_cancel_date"] ?? "",
        lrDate: DateTime.parse(json["lr_date"] ?? ""),
        lrNo: json["lr_no"] ?? "",
        modeOfTransport: json["mode_of_transport"] ?? "",
        portCode: json["port_code"] ?? "",
        qrcodeImage: json["qrcode_image"] ?? "",
        reasonForIssuingDocument: json["reason_for_issuing_document"] ?? "",
        reverseCharge: json["reverse_charge"] ?? "",
        shippingBillDate: json["shipping_bill_date"] ?? "",
        shippingBillNumber: json["shipping_bill_number"] ?? "",
        signedEinvoice: json["signed_einvoice"] ?? "",
        signedQrCode: json["signed_qr_code"] ?? "",
        transporterName: json["transporter_name"] ?? "",
        vehicleNo: json["vehicle_no"] ?? "",
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
        "tax_id": taxId,
        "pos_profile": posProfile,
        "is_pos": isPos,
        "is_consolidated": isConsolidated,
        "is_return": isReturn,
        "is_debit_note": isDebitNote,
        "update_billed_amount_in_sales_order": updateBilledAmountInSalesOrder,
        "company": company,
        "company_tax_id": companyTaxId,
        "posting_date":
            "${postingDate.year.toString().padLeft(4, '0')}-${postingDate.month.toString().padLeft(2, '0')}-${postingDate.day.toString().padLeft(2, '0')}",
        "posting_time": postingTime,
        "set_posting_time": setPostingTime,
        "due_date":
            "${dueDate.year.toString().padLeft(4, '0')}-${dueDate.month.toString().padLeft(2, '0')}-${dueDate.day.toString().padLeft(2, '0')}",
        "return_against": returnAgainst,
        "amended_from": amendedFrom,
        "project": project,
        "cost_center": costCenter,
        "po_no": poNo,
        "po_date": poDate,
        "customer_address": customerAddress,
        "address_display": addressDisplay,
        "contact_person": contactPerson,
        "contact_display": contactDisplay,
        "contact_mobile": contactMobile,
        "contact_email": contactEmail,
        "territory": territory,
        "shipping_address_name": shippingAddressName,
        "shipping_address": shippingAddress,
        "company_address": companyAddress,
        "company_address_display": companyAddressDisplay,
        "dispatch_address_name": dispatchAddressName,
        "dispatch_address": dispatchAddress,
        "currency": currency,
        "conversion_rate": conversionRate,
        "selling_price_list": sellingPriceList,
        "price_list_currency": priceListCurrency,
        "plc_conversion_rate": plcConversionRate,
        "ignore_pricing_rule": ignorePricingRule,
        "set_warehouse": setWarehouse,
        "set_target_warehouse": setTargetWarehouse,
        "update_stock": updateStock,
        "scan_barcode": scanBarcode,
        "total_billing_amount": totalBillingAmount,
        "total_billing_hours": totalBillingHours,
        "total_qty": totalQty,
        "base_total": baseTotal,
        "base_net_total": baseNetTotal,
        "total_net_weight": totalNetWeight,
        "total": total,
        "net_total": netTotal,
        "taxes_and_charges": taxesAndCharges,
        "shipping_rule": shippingRule,
        "tax_category": taxCategory,
        "other_charges_calculation": otherChargesCalculation,
        "base_total_taxes_and_charges": baseTotalTaxesAndCharges,
        "total_taxes_and_charges": totalTaxesAndCharges,
        "loyalty_points": loyaltyPoints,
        "loyalty_amount": loyaltyAmount,
        "redeem_loyalty_points": redeemLoyaltyPoints,
        "loyalty_program": loyaltyProgram,
        "loyalty_redemption_account": loyaltyRedemptionAccount,
        "loyalty_redemption_cost_center": loyaltyRedemptionCostCenter,
        "apply_discount_on": applyDiscountOn,
        "is_cash_or_non_trade_discount": isCashOrNonTradeDiscount,
        "base_discount_amount": baseDiscountAmount,
        "additional_discount_account": additionalDiscountAccount,
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
        "total_advance": totalAdvance,
        "outstanding_amount": outstandingAmount,
        "disable_rounded_total": disableRoundedTotal,
        "write_off_amount": writeOffAmount,
        "base_write_off_amount": baseWriteOffAmount,
        "write_off_outstanding_amount_automatically":
            writeOffOutstandingAmountAutomatically,
        "write_off_account": writeOffAccount,
        "write_off_cost_center": writeOffCostCenter,
        "allocate_advances_automatically": allocateAdvancesAutomatically,
        "ignore_default_payment_terms_template":
            ignoreDefaultPaymentTermsTemplate,
        "payment_terms_template": paymentTermsTemplate,
        "cash_bank_account": cashBankAccount,
        "base_paid_amount": basePaidAmount,
        "paid_amount": paidAmount,
        "base_change_amount": baseChangeAmount,
        "change_amount": changeAmount,
        "account_for_change_amount": accountForChangeAmount,
        "tc_name": tcName,
        "terms": terms,
        "letter_head": letterHead,
        "group_same_items": groupSameItems,
        "select_print_heading": selectPrintHeading,
        "language": language,
        "status": status,
        "inter_company_invoice_reference": interCompanyInvoiceReference,
        "represents_company": representsCompany,
        "customer_group": customerGroup,
        "campaign": campaign,
        "is_internal_customer": isInternalCustomer,
        "is_discounted": isDiscounted,
        "source": source,
        "debit_to": debitTo,
        "party_account_currency": partyAccountCurrency,
        "is_opening": isOpening,
        "c_form_applicable": cFormApplicable,
        "c_form_no": cFormNo,
        "unrealized_profit_loss_account": unrealizedProfitLossAccount,
        "remarks": remarks,
        "sales_partner": salesPartner,
        "amount_eligible_for_commission": amountEligibleForCommission,
        "commission_rate": commissionRate,
        "total_commission": totalCommission,
        "from_date": fromDate,
        "to_date": toDate,
        "auto_repeat": autoRepeat,
        "against_income_account": againstIncomeAccount,
        "_user_tags": userTags,
        "_comments": comments,
        "_assign": assign,
        "_liked_by": likedBy,
        "_seen": seen,
        "irn_cancelled": irnCancelled,
        "irn": irn,
        "eway_bill_cancelled": ewayBillCancelled,
        "ewaybill": ewaybill,
        "eway_bill_validity": ewayBillValidity,
        "billing_address_gstin": billingAddressGstin,
        "customer_gstin": customerGstin,
        "place_of_supply": placeOfSupply,
        "company_gstin": companyGstin,
        "transporter": transporter,
        "gst_category": gstCategory,
        "ack_date": ackDate,
        "ack_no": ackNo,
        "distance": distance,
        "driver": driver,
        "driver_name": driverName,
        "ecommerce_gstin": ecommerceGstin,
        "einvoice_status": einvoiceStatus,
        "export_type": exportType,
        "failure_description": failureDescription,
        "gst_transporter_id": gstTransporterId,
        "gst_vehicle_type": gstVehicleType,
        "invoice_copy": invoiceCopy,
        "irn_cancel_date": irnCancelDate,
        "lr_date":
            "${lrDate.year.toString().padLeft(4, '0')}-${lrDate.month.toString().padLeft(2, '0')}-${lrDate.day.toString().padLeft(2, '0')}",
        "lr_no": lrNo,
        "mode_of_transport": modeOfTransport,
        "port_code": portCode,
        "qrcode_image": qrcodeImage,
        "reason_for_issuing_document": reasonForIssuingDocument,
        "reverse_charge": reverseCharge,
        "shipping_bill_date": shippingBillDate,
        "shipping_bill_number": shippingBillNumber,
        "signed_einvoice": signedEinvoice,
        "signed_qr_code": signedQrCode,
        "transporter_name": transporterName,
        "vehicle_no": vehicleNo,
      };
}
