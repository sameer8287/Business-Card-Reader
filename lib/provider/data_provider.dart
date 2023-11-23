import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:starter_pack/constants/api_key.dart';
import 'package:starter_pack/hive_utils/hive_database/hive_models/credentials.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:starter_pack/model/visitorCardDetailModel.dart';
import '../hive_utils/hive_database/database.dart';
import '../model/leadnamemodel.dart';
import '../services/frappe_services.dart';

class DataProvider {
  final ProviderRef ref;

  DataProvider(
    this.ref,
  );

  validateLogin(BuildContext context) async {
    final loginBox = await HiveDatabase().logincredientialBox();
    bool checkLogin = await ref.read(frappeProvider.notifier).checkLogin();
    if (loginBox.isNotEmpty && checkLogin) {
      // ignore: use_build_context_synchronously
      GoRouter.of(context).push('/home');
    } else {
      // ignore: use_build_context_synchronously
      GoRouter.of(context).push('/login');
    }
  }

  Future<List<LeadNameModel>> getData() async {
    List<LeadNameModel> leadList = [];

    EasyLoading.show(status: "Please Wait");

    var response =
        await ref.read(frappeProvider.notifier).getList("Lead", fields: ["*"]);

    if (response.statusCode == 200) {
      response.data["data"].forEach((data) {
        leadList.add(LeadNameModel.fromJson(data));
      });

      EasyLoading.dismiss();
    }
    return leadList;
  }

  Future login(String? uName, String? password, BuildContext context) async {
    EasyLoading.show(status: "Please Wait");
    try {
      Box loginBox = await HiveDatabase().logincredientialBox();
      var response = await ref
          .read(frappeProvider.notifier)
          .login(uName.toString(), password.toString());

      if (response.statusCode == 200) {
        loginBox
            .add(CredentialHiveModel(
                fullname: response.data['full_name'].toString(),
                username: uName))
            .whenComplete(() {
          validateLogin(context);
        });
        EasyLoading.showSuccess("Successfully Logged In");
      }
      return response;
    } catch (e) {
      if (e is DioError) {
        if (e.response?.statusCode == 401) {
          EasyLoading.showError("Invalid credentials");
        } else {
          EasyLoading.showError("Server Error");
        }
      }
      EasyLoading.dismiss();
      rethrow;
    }
  }

  Future<dynamic> gptData(
      {required String txt, required BuildContext context}) async {
    EasyLoading.show();
    var response;
    log(txt);
    VisitorCardDetailsModel? data;
    try {
      response = await Dio().post("https://api.openai.com/v1/chat/completions",
          data: {
            "model": "gpt-3.5-turbo",
            "messages": [
              {'role': 'user', 'content': txt},
            ]
          },
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $OpenAiKey',
          }));
      log(response.data.toString() + " print 1");

      // print(response.statusCode.toString());
      if (response.statusCode == 200) {
        EasyLoading.dismiss();
        // log(jsonDecode(
        //     response.data["choices"][0]["message"]["content"][0].toString()));
        data = VisitorCardDetailsModel.fromJson(
            jsonDecode(response.data["choices"][0]["message"]["content"]));
        log(data.address);
        log(data.companyName);
        log(data.email);
        log(data.personDesignation);
        log(data.personName);
        log(data.phoneNumber);
        GoRouter.of(context).pushNamed('visitorDetails', queryParameters: {
          "email": data.email,
          "phoneNo": data.phoneNumber,
          "companyName": data.companyName,
          "name": data.personName
        });
      }
    } on DioException catch (e) {
      EasyLoading.dismiss();
      log(e.response!.data.toString());
      return true;
    }
    EasyLoading.dismiss();

    return data;
  }

  uploadCardData(
      {required String email,
      required String number,
      required String companyName,
      required String fullName,
      required BuildContext context}) async {
    EasyLoading.show();
    var res =
        await ref.read(frappeProvider.notifier).newDoc("visitor form", data: {
      "email": email,
      "number": number,
      "full_name": fullName,
      "company_name": companyName
    });
    if (res.statusCode == 200) {
      EasyLoading.showSuccess("Data Uploaded");
      GoRouter.of(context).pop();
    } else {
      if (kDebugMode) {
        EasyLoading.showError("Error in uploading data");
        // log("");
      }
    }
    EasyLoading.dismiss();
  }
}

final getProvider = Provider<DataProvider>((ref) => DataProvider(ref));
