import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cots_muhammad_chairul_anam/design_system/color_collections.dart';
import 'package:cots_muhammad_chairul_anam/design_system/fonts_collections.dart';
import '../controller/login_controller.dart';
import 'package:cots_muhammad_chairul_anam/modules/Login_Page/widgets/login_widget.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.darkGrey),
          onPressed: () => Get.back(),
        ),
        title: Row(
          children: [
            Image.asset('assets/img/Gojek_Logo.png', height: 24),
          ],
        ),
        backgroundColor: AppColors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline, color: AppColors.darkGrey),
            onPressed: () {
              // Handle help action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text('Login', style: AppTypography.h1),
            SizedBox(height: 8),
            Text(
              'Enter your registered phone number to log in',
              style: AppTypography.paragraph1,
            ),
            SizedBox(height: 32),
            Text('Phone Number', style: AppTypography.paragraph2),
            SizedBox(height: 8),
            Row(
              children: [
                CountryCodePickerButton(),
                SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    controller: controller.phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Enter phone number',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: controller.clearPhoneNumber,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: AppColors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            TextButton(
              onPressed: () {
                // Handle "issue with number" action
              },
              child: Text(
                'Issue with number?',
                style: AppTypography.paragraph2.copyWith(
                  color: AppColors.primaryGreen,
                ),
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: controller.continueToHome,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryGreen,
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Continue',
                  style: AppTypography.h4.copyWith(color: AppColors.white),
                ),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
