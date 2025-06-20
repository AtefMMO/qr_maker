import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QrContainer extends StatelessWidget {
  Color firstColor;
  Color secondColor;
  QrContainer({super.key, required this.firstColor, required this.secondColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.h,
      width: 250.w,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [firstColor, secondColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
