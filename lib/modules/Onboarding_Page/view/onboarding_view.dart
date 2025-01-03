import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:cots_muhammad_chairul_anam/design_system/color_collections.dart';
import 'package:cots_muhammad_chairul_anam/design_system/fonts_collections.dart';
import '../controller/onboarding_controller.dart';
import '../widgets/onboarding_widget.dart';

class OnboardingView extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    // Auto-slide timer
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (controller.currentPage.value <
          controller.onboardingPages.length - 1) {
        controller.setPage(controller.currentPage.value + 1);
      } else {
        controller.setPage(0);
      }
    });

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Obx(
        () => Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: controller.setPage,
                itemCount: controller.onboardingPages.length,
                itemBuilder: (context, index) {
                  final page = controller.onboardingPages[index];
                  return OnboardingWidget(
                    image: page['image']!,
                    title: page['title']!,
                    description: page['description']!,
                  );
                },
              ),
            ),
            _buildBottomSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            controller.onboardingPages.length,
            (index) => Obx(
              () => AnimatedContainer(
                duration: Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: controller.currentPage.value == index ? 16 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: controller.currentPage.value == index
                      ? AppColors.primaryGreen
                      : AppColors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        _buildButton(
          text: 'Masuk',
          onPressed: () {
            Get.toNamed('/login');
          },
        ),
        _buildButton2(
          text: 'Belum ada akun?, Daftar dulu',
          onPressed: () {
            Get.toNamed('/login');
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Dengan masuk atau mendaftar, kamu menyetujui Ketentuan layanan dan Kebijakan privasi.',
            textAlign: TextAlign.center,
            style: AppTypography.paragraph4.copyWith(color: AppColors.grey),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget _buildButton({required String text, required VoidCallback onPressed}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.symmetric(vertical: 14),
          minimumSize: Size(double.infinity, 48),
        ),
        child: Text(
          text,
          style: AppTypography.h4.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
  Widget _buildButton2({required String text, required VoidCallback onPressed}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.symmetric(vertical: 14),
          minimumSize: Size(double.infinity, 48),
        ),
        child: Text(
          text,
          style: AppTypography.h4.copyWith(color: AppColors.primaryGreen),
        ),
      ),
    );
  }
}
