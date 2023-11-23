import 'package:starter_pack/router/routers.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:starter_pack/services/frappe_services.dart';

import 'hive_utils/hive_database/database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await HiveDatabase().init();

  runApp(DevicePreview(
    enabled: kReleaseMode,
    builder: (context) => const ProviderScope(child: MyApp()),
  ));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(frappeProvider);
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    var router = ref.watch(routerProvider);
    return ScreenUtilInit(
      designSize: const Size(360, 800), 
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) {
        return MaterialApp.router(
          routerDelegate: router.routerDelegate,
          routeInformationParser: router.routeInformationParser,
          routeInformationProvider: router.routeInformationProvider,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
          ),
          builder: EasyLoading.init(),
        );
      },
    );
  }
}
