import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:starter_pack/screens/home/home.dart';
import 'package:starter_pack/screens/home/visitor_details.dart';
import 'package:starter_pack/screens/splash_screen.dart';

import '../screens/landing_home.dart';
import '../screens/login.dart';

var routerProvider = Provider(
  (ref) => GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
          path: '/login',
          builder: (context, state) {
            return const Login();
          }),
      GoRoute(
          path: '/home',
          builder: (context, state) {
            return const Home();
          }),
      GoRoute(
          path: '/visitorDetails',
          name: "visitorDetails",
          builder: (context, state) {
            return VisitorDetails(
              companyName: state.queryParameters['companyName'].toString(),
              email: state.queryParameters["email"].toString(),
              name: state.queryParameters["name"].toString(),
              phoneNo: state.queryParameters["phoneNo"].toString(),
            );
          }),
    ],
  ),
);
