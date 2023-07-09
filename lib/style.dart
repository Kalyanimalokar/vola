import 'package:flutter/material.dart';
import 'package:vola1/colors.dart';

class PrimaryText extends StatelessWidget {
  final Color color;
  final double size;
  final FontWeight fontWeight;
  final String text;

  const PrimaryText(
      {this.size: 16,
      this.fontWeight: FontWeight.w700,
      this.color: AppColor.primaryColor,
      this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: size,
          color: color,
          fontWeight: fontWeight),
    );
  }
}
