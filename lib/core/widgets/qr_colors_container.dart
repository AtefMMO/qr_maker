import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QrColorsContainer extends StatelessWidget {
  final Color firstColor;
  final Color secondColor;
  final Function() onTap;
  const QrColorsContainer(
      {super.key,
      required this.firstColor,
      required this.secondColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 2.w),
            gradient: LinearGradient(colors: [firstColor, secondColor]),
            borderRadius: BorderRadius.circular(16.r),
          ),
          height: 70.h,
          width: 70.w,
        ),
      ),
    );
  }
}
