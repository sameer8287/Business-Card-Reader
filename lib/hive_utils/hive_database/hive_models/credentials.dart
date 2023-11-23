import 'package:hive/hive.dart';

part 'credentials.g.dart';

@HiveType(typeId:0)
class CredentialHiveModel {
  @HiveField(0)
  String? username;
  @HiveField(1)
  String? fullname;

  CredentialHiveModel({
    required this.fullname,
    required this.username
  });
}