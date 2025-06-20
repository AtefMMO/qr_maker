import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final Color borderColor;
  final TextStyle? textStyle;
  final double? borderWidth;
  void Function(String)? onChanged;
  CustomTextFormField(
      {super.key,
      required this.borderColor,
      this.textStyle,
      this.borderWidth,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: borderColor,
            width: borderWidth ?? 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: borderColor,
            width: borderWidth ?? 1.0,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: borderColor,
            width: borderWidth ?? 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: borderColor,
            width: borderWidth ?? 1.0,
          ),
        ),
      ),
      style: textStyle,
    );
  }
}
