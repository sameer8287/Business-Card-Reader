import 'package:starter_pack/hive_utils/hive_database/hive_models/credentials.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path;

class HiveDatabase {
  Future<void> init() async {
    final appDocumentDir = await path.getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
    Hive.registerAdapter(CredentialHiveModelAdapter());
  }

  Future<Box<CredentialHiveModel>> logincredientialBox() async {
    return await Hive.openBox<CredentialHiveModel>('LoginBox');
  }
}

final getDatabase = Provider((ref) => HiveDatabase());
