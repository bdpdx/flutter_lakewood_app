import 'package:flutter/material.dart';
import 'package:flutter_lakewood_app/styles/app_colors.dart';
import 'package:flutter_lakewood_app/styles/text_styles.dart';

class ButtonStyles {
  static final ButtonStyle homePageButton = ElevatedButton.styleFrom(
    // https://htmlcolorcodes.com/color-picker/
    foregroundColor: AppColors.darkGreen,
    backgroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
    textStyle: TextStyles.homePageButton,
  );
}
