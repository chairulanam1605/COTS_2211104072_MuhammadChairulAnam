import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cots_muhammad_chairul_anam/modules/Onboarding_Page/bindings/onboarding_binding.dart';
import 'package:cots_muhammad_chairul_anam/modules/Onboarding_Page/view/onboarding_view.dart';
import 'package:cots_muhammad_chairul_anam/modules/Login_Page/view/login_view.dart';
import 'package:cots_muhammad_chairul_anam/modules/Login_Page/bindings/login_binding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Onboarding App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => OnboardingView(),
          binding: OnboardingBinding(),
        ),
        GetPage(
          name: '/login',
          page: () => LoginView(),
          binding: LoginBinding(),
        ),
        GetPage(name: '/home', page: () => HomeView()),
      ],
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Home Page')),
    );
  }
}
