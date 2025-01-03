import 'package:flutter/material.dart';
import 'package:cots_muhammad_chairul_anam/design_system/color_collections.dart';
import 'package:cots_muhammad_chairul_anam/design_system/fonts_collections.dart';

class CountryCodePickerButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.grey),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('+62', style: AppTypography.paragraph2),
          Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }
}
