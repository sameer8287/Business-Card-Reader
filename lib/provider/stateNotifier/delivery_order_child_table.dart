import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeliveryOrderChildTable {
  final String itemCode;
  final String itemName;
  String deliveryDate;
  final String quantity;
  final String uOM;
  final String conversionFactor;
  final String priceList;
  final String description;
  final String totalAmount;

  DeliveryOrderChildTable({
    required this.itemCode,
    required this.itemName,
    required this.deliveryDate,
    required this.quantity,
    required this.uOM,
    required this.conversionFactor,
    required this.priceList,
    required this.description,
    required this.totalAmount,
  });
}

class DeliveryOrderChildTableNotifier
    extends StateNotifier<List<DeliveryOrderChildTable>> {
  DeliveryOrderChildTableNotifier() : super([]);

  void add(DeliveryOrderChildTable item) {
    state = [...state, item];
  }

  void removeItem(String name) {
    state = [
      for (final itemName in state)
        if (itemName.itemName != name) itemName,
    ];
  }
}

final deliveryOrderChildTableProvider = StateNotifierProvider.autoDispose<
    DeliveryOrderChildTableNotifier,
    List<DeliveryOrderChildTable>>((ref) => DeliveryOrderChildTableNotifier());
