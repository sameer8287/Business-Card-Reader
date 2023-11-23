import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'dart:developer';
import 'package:inapp_flutter_kyc/inapp_flutter_kyc.dart';
import 'package:lottie/lottie.dart';
import 'package:starter_pack/components/get_space.dart';
import 'package:starter_pack/constants/color.dart';
import 'package:starter_pack/model/visitorCardDetailModel.dart';
import 'package:starter_pack/provider/data_provider.dart';
import 'package:starter_pack/screens/home/card_scanner.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  File? selfieImage;
  Map<String, bool> keyWordData = {
    'Name': false,
    'Date of Birth': true,
    'NID No': false
  };

  var scannedData;
  ExtractedDataFromId? extractedDataFromId;
  // extractWebsiteUrls(String input) {
  //   // RegExp exp = RegExp(r'https?://([^\s/$.?#].[^\s]*\.(?:com|co|org)[^\s]*)');
  //   RegExp exp = RegExp(
  //       r'https?://(?:www\.)?([a-zA-Z0-9.-]+(?:\.[a-zA-Z]{2,})+)(?:/[\w.-]*)*/?');
  //   var matches = exp.allMatches(input).map((e) => e.group(0)).toList();
  //   log(matches[0].toString());
  //   // List<String> urls = matches.map((match) => match.group(0)).toList();
  // }

  // extractName(String txt)
  // {
  //   RegExp exp = RegExp(r'\b[A-Z][a-z]+ [A-Z][a-z]+\b');
  //   v
  // }

  var email = "";
  var number = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 550.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue, Colors.blue.withOpacity(0.4)],
                    ),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(100))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  getVerticalSpace(height: 20.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 110),
                    child: Row(
                      children: [
                        Text(
                          'Start ',
                          style: TextStyle(
                              fontSize: 22.sp, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          ' Scanning',
                          style: TextStyle(
                              fontSize: 22.sp, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  getVerticalSpace(height: 5.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 110),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Container(
                          height: 3.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(20)),
                        )
                      ],
                    ),
                  ),
                  getVerticalSpace(height: 30.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 65),
                    child: Row(
                      children: [
                        Text(
                          'Press',
                          style: TextStyle(color: Colors.blue),
                        ),
                        getHorizontalSpace(width: 10.w),
                        Text('below to Scan your visiting card')
                      ],
                    ),
                  ),
                  getVerticalSpace(height: 30.h),
                  GestureDetector(
                    onTap: () async {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //   builder: (context) {
                      //     return HomeScreen();
                      //   },
                      // ));

                      extractedDataFromId =
                          await EkycServices().openImageScanner(keyWordData);

                      String data1 = extractedDataFromId!.extractedText!
                          .replaceAll('\n', '');

                      String data = data1.replaceAll(' ', '');

                      if (extractedDataFromId?.extractedText != null) {
                        // log("""${data}""" +
                        //     "Extract comany_name , person_name, email , website , phone_number(only one) , address(In single string) and person_designation into the format of json");
                        data = await ref.read(getProvider).gptData(
                            context: context,
                            txt:
                                "${data} Extractcomany_name,person_name,email,website,phone_number(only one),address(In single string),person_designationintotheformatofjson");

                        // print(data.address);
                        // print(data.companyName);
                        // print(data.email);
                        // print(data.personDesignation);
                        // print(data.personName);
                        // print(data.phoneNumber);
                        // print(data.website);

                        // log(data['choices'].toString() + " Check");
                      }
                    },
                    child: Container(
                        height: 70.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue.withOpacity(0.4),
                          border: Border.all(
                            color: Colors.white, // Color of the border (stroke)
                            width: 4.0, // Width of the border (stroke)
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.4),
                              spreadRadius: 0,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 30,
                        )),
                  )
                ],
              ),
            ],
          ),
          Positioned(
              left: 20.w,
              right: 20.w,
              top: 240.h,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Lottie.asset('assets/animation/new_animation.json'),
              ))
        ],
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton(
      //     shape: CircleBorder(),
      //     backgroundColor: Colors.blue.withOpacity(0.4),
      //     onPressed: () {},
      //     child: Icon(
      //       Icons.arrow_forward_ios_rounded,
      //       color: Colors.white,
      //     )),
    );
  }
}
