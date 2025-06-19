
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class TextStyles{
  static TextStyle title = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: const Color(0xFF000000), // Black color
  );
  static TextStyle subtitle = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: const Color(0xFF555555), // Dark gray color
  );
  static TextStyle bodyText = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: const Color(0xFF333333), // Medium gray color
  );
}
