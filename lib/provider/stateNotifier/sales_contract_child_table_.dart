import 'package:flutter_riverpod/flutter_riverpod.dart';

class SalesContractChildTable {
  final String itemCode;
  final String itemName;
  final String quantity;
  final String uOM;
  final String conversionFactor;
  final String priceList;
  final String description;
  final String totalAmount;
  

  SalesContractChildTable({
    required this.itemCode,
    required this.itemName,
    required this.quantity,
    required this.uOM,
    required this.conversionFactor,
    required this.priceList,
    required this.description,
    required this.totalAmount,

  });
}

class SalesContractChildTableNotifier
    extends StateNotifier<List<SalesContractChildTable>> {
  SalesContractChildTableNotifier() : super([]);

  void add(SalesContractChildTable item) {
    state = [...state, item];
  }


  void removeItem(String name) {
    state = [
      for (final itemName in state)
        if (itemName.itemName != name) itemName,
    ];
  }

  void totalNetWeightfn(double x)
  {
    
  }
}

final salesContractChildTableProvider = StateNotifierProvider.autoDispose<
    SalesContractChildTableNotifier,
    List<SalesContractChildTable>>((ref) => SalesContractChildTableNotifier());
