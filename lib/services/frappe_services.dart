import 'dart:convert';
import 'dart:developer';
import 'package:starter_pack/constants/token.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants/api_path.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class FrappeServices extends StateNotifier {
  final StateNotifierProviderRef<FrappeServices, Object?> ref;

  FrappeServices(this.ref) : super(null) {
    onInit();
  }

  var dio = Dio();

  void onInit() {
    dio.options.baseUrl = '$baseUrl/api';
    log('$baseUrl/api');

    dio.options.connectTimeout = const Duration(milliseconds: 10000);

    dio.options.headers = {
      // 'Authorization': token,
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    path_provider.getApplicationDocumentsDirectory().then((value) {
      var cookieJar = PersistCookieJar(storage: FileStorage(value.path));
      if (kDebugMode) {
        print(cookieJar);
      }
      dio.interceptors.add(CookieManager(cookieJar));
    });
  }

  Future<Response> login(String username, String password) async {
    try {
      Response response = await dio.post('/method/login',
          data: {'usr': username, 'pwd': password, 'device': 'mobile'});

      return response;
    } on DioError {
      rethrow;
    }
  }

  Future<Response> getDoc(String doctype, String docname) async {
    try {
      Response response = await dio.get('/resource/$doctype/$docname',
          options: Options(headers: {
            // 'Authorization': token,
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      return response;
    } on DioError {
      rethrow;
    }
  }

  Future<Response> newDoc(String doctype, {required Object data}) async {
    try {
      Response response = await dio.post('/resource/$doctype',
          data: data,
          options: Options(headers: {
            // 'Authorization': token,
            // 'Content-Type': 'application/json',
            // 'Accept': 'application/json',
          }));

      return response;
    } on DioError {
      rethrow;
    }
  }

  Future<Response> updateDoc(String doctype, String docname,
      {required Object data}) async {
    try {
      Response response =
          await dio.put('/resource/$doctype/$docname', data: data);
      return response;
    } on DioError {
      rethrow;
    }
  }

  Future<Response> getDocFields({required String doctype}) async {
    try {
      Response response = await dio.post(
          '/method/frappe.desk.form.load.getdoctype?doctype=$doctype',
          options: Options(headers: {
            'Authorization': token,
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));
      return response;
    } on DioError {
      rethrow;
    }
  }

  Future<Response> getList(String doctype,
      {List<List>? filters,
      List<List>? orfilters,
      int? limit,
      String? orderBy,
      List<String>? fields,
      int? startIndex}) async {
    String subUrl = '/?limit=20';
    String newfields;
    if (limit != null) {
      subUrl = '/?limit=$limit';
    }
    if (filters != null) {
      subUrl = '$subUrl&filters=${jsonEncode(filters)}';
    }
    if (orfilters != null) {
      subUrl = '$subUrl&or_filters=${jsonEncode(orfilters)}';
    }

    if (fields != null) {
      newfields = jsonEncode(fields);
      subUrl = '$subUrl&fields=$newfields';
    }
    if (startIndex != null) {
      newfields = jsonEncode(fields);
      subUrl = '$subUrl&limit_start=$startIndex';
    }

    if (orderBy != null) {
      newfields = jsonEncode(fields);
      subUrl = '$subUrl&order_by=$orderBy';
    }
    log('/resource/$doctype$subUrl');
    try {
      Response response = await dio.get('/resource/$doctype$subUrl',
          options: Options(headers: {
            // 'Authorization': token,
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));

      return response;
    } on DioError catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  Future<bool> checkLogin() async {
    try {
      await dio.get('/method/frappe.auth.get_logged_user');
      return true;
    } on DioError catch (e) {
      log(e.response.toString());
      return false;
    }
  }

  Future<Response> addAssignee({required Object data}) async {
    try {
      Response response =
          await dio.post('/method/frappe.desk.form.assign_to.add', data: data);
      return response;
    } on DioError {
      rethrow;
    }
  }

  Future<Response> logout() async {
    try {
      Response response = await dio.get('/method/logout');
      return response;
    } on DioError {
      rethrow;
    }
  }

  Future<Response> fetchAssignee({required Object data}) async {
    try {
      Response response = await dio
          .post('/method/frappe.desk.form.load.get_docinfo', data: data);

      return response;
    } on DioError {
      rethrow;
    }
  }

  Future<Response> deleteAssignee({required Object data}) async {
    try {
      Response response = await dio
          .post('/method/frappe.desk.form.assign_to.remove', data: data);

      return response;
    } on DioError {
      rethrow;
    }
  }
}

final frappeProvider = StateNotifierProvider<FrappeServices, Object?>((ref) {
  return FrappeServices(ref);
});
