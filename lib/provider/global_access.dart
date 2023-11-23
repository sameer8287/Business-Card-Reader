import 'package:starter_pack/hive_utils/hive_database/database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_pack/provider/data_provider.dart';

import '../model/leadnamemodel.dart';

final globalDatabaseProvider =
    FutureProvider((ref) => ref.read(getDatabase).logincredientialBox());


    final getDataProvider=FutureProvider <List<LeadNameModel>>((ref) => ref.read(getProvider).getData());

