import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/custom_textform_field.dart';
import '../components/get_space.dart';

import '../provider/data_provider.dart';

class Login extends ConsumerStatefulWidget {
  const Login({super.key});

  @override
  ConsumerState<Login> createState() => _LoginState();
}

class _LoginState extends ConsumerState<Login> {
  @override
  Widget build(BuildContext context) {
    var displayHeight = MediaQuery.of(context).size.height;
    var displayWidth = MediaQuery.of(context).size.width;
    TextEditingController email = TextEditingController(text: "rohitarora@extensioncrm.com");
    TextEditingController password = TextEditingController(text: 'Rohit@456');

    return Scaffold(
        body: WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  getVerticalSpace(height: 20),
                  SizedBox(
                      height: displayHeight * 0.3,
                      width: displayWidth * 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/logo.png"),
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Welcome back!',
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          'Login to your Account',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        getVerticalSpace(height: 40),
                        custom_textform_field(cont: email, hint: 'Email'),
                        getVerticalSpace(height: 20),
                        custom_textform_field(cont: password, hint: 'Password'),
                        getVerticalSpace(height: 20),
                        getVerticalSpace(height: 30),
                        ElevatedButton(onPressed: (){
 ref.read(getProvider).login(email.text.toString(),
                                  password.text.toString(), context);
                        }, child: Text("Login"))
                      
                      ],
                    ),
                  ),
                  getVerticalSpace(height: 40),
                  Text(
                    "© Copyright - AJANTA SOYA LIMITED",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
