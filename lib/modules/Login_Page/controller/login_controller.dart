import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final phoneController = TextEditingController();

  void clearPhoneNumber() {
    phoneController.clear();
  }

  void continueToHome() {
    // Navigate to home screen
    Get.offAllNamed('/home');
  }

  @override
  void onClose() {
    phoneController.dispose();
    super.onClose();
  }
}
