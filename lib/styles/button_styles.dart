import 'package:flutter/material.dart';
import 'package:flutter_lakewood_app/styles/text_styles.dart';

class ButtonStyles {
  static final ButtonStyle primary = ElevatedButton.styleFrom(
    // https://htmlcolorcodes.com/color-picker/
    foregroundColor: const Color.fromARGB(255, 37, 112, 6),
    backgroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
    textStyle: TextStyles.button,
  );
}
