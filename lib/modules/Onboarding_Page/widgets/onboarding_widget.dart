import 'package:flutter/material.dart';
import 'package:cots_muhammad_chairul_anam/design_system/fonts_collections.dart';

class OnboardingWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Image.asset(image, height: 250),
          SizedBox(height: 32),
          Text(
            title,
            style: AppTypography.h2,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          Text(
            description,
            style: AppTypography.paragraph2,
            textAlign: TextAlign.center,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
