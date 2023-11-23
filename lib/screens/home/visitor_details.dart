import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starter_pack/components/get_space.dart';
import 'package:starter_pack/provider/data_provider.dart';

class VisitorDetails extends ConsumerStatefulWidget {
  final String name;
  final String email;
  final String phoneNo;
  final String companyName;
  const VisitorDetails(
      {super.key,
      required this.name,
      required this.email,
      required this.companyName,
      required this.phoneNo});

  @override
  ConsumerState<VisitorDetails> createState() => _VisitorDetailsState();
}

class _VisitorDetailsState extends ConsumerState<VisitorDetails> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController companyController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      nameController.text = widget.name;
      emailController.text = widget.email;
      phoneController.text = widget.phoneNo;
      companyController.text = widget.companyName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.2),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue.withOpacity(0.4),
              Colors.blue.withOpacity(0.6),
            ],
          ),
          // borderRadius:
          //     BorderRadius.only(bottomLeft: Radius.circular(100))
        ),
        child: Stack(
          children: [
            Positioned(
                top: 140.h,
                left: 35,
                right: 35,
                child: Column(
                  children: [
                    Text(
                      "Verify ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    // Text(
                    //   "Visitor",
                    //   style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 30.sp,
                    //       fontWeight: FontWeight.w500),
                    // ),
                    Container(
                      height: 3.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                    ),

                    // Container(
                    //   height: 3.h,
                    //   width: 190.w,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(20),
                    //       color: Colors.white),
                    // ),
                  ],
                )),
            Positioned(
                left: 35,
                right: 35,
                top: 250,
                child: Container(
                  height: 310.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        getVerticalSpace(height: 20.h),
                        TextFormField(
                          controller: nameController,
                          decoration: InputDecoration(label: Text("Name")),
                        ),
                        getVerticalSpace(height: 5.h),
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(label: Text("Email Id")),
                        ),
                        getVerticalSpace(height: 5.h),
                        TextFormField(
                          controller: phoneController,
                          decoration: InputDecoration(label: Text("Phone no.")),
                        ),
                        getVerticalSpace(height: 5.h),
                        TextFormField(
                          controller: companyController,
                          decoration:
                              InputDecoration(label: Text("Company name")),
                        ),
                      ],
                    ),
                  ),
                )),
            Positioned(
                left: 90,
                right: 90,
                top: 650,
                child: InkWell(
                  onTap: () {
                    ref.read(getProvider).uploadCardData(
                        email: widget.email,
                        number: widget.phoneNo,
                        companyName: widget.companyName,
                        fullName: widget.name,
                        context: context);
                  },
                  child: Container(
                    height: 45.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white, width: 2.w)),
                    child: Center(
                        child: Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

// class reusable_row extends StatelessWidget {
//   final String txt1;
//   final String txt2;
//   const reusable_row({super.key, required this.txt1, required this.txt2});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           txt1,
//           style: TextStyle(fontSize: 18.sp),
//         ),
//         Text(
//           txt2,
//           style: TextStyle(fontSize: 18.sp),
//         )
//       ],
//     );
//   }
// }
