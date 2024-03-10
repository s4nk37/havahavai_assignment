import 'package:flutter/material.dart';

import 'constants/app_colors.dart';
import 'constants/app_config.dart';

class AppTheme {
  static final themeData = ThemeData(
    primaryColor: AppColors.black,
    fontFamily: kAppFont,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 20,
        color: AppColors.black2,
        fontWeight: FontWeight.w700,
      ),
      headlineSmall: TextStyle(
        fontSize: 12,
        color: AppColors.darkGrey,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        color: AppColors.black,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        color: AppColors.black,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: TextStyle(
        fontSize: 11,
        color: AppColors.mediumGrey,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
