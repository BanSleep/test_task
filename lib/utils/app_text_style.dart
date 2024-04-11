import 'package:flutter/material.dart';
import 'package:test_task/utils/app_colors.dart';

class AppTextStyle {
  static const TextStyle titleStyle = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.mainColor,
  );

  static const TextStyle listItemStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.mainColor,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
}
