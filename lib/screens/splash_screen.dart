import 'package:starter_pack/components/get_space.dart';
import 'package:starter_pack/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/data_provider.dart';



class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    ref.read(getProvider).validateLogin(context);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var displayHeight = MediaQuery.of(context).size.height;
    var displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: WillPopScope(
        onWillPop: () async {
          SystemNavigator.pop();
          return true;
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: displayHeight * 0.3,
                width: displayWidth * 0.6,
                child: Image.asset("assets/logo.png"),
              ),
              getVerticalSpace(height: 20),
              const Text(
                "Welcome to CRM platform",
                style: TextStyle(fontSize: 20),
              ),
              getVerticalSpace(height: 100),
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(btnColor),
                color: btnColor,
                backgroundColor: Color.fromARGB(255, 151, 141, 141),
              ),
              getVerticalSpace(height: 150),
              const Text(
                "© Copyright - AJANTA SOYA LIMITED",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
