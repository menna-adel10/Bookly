import 'package:flutter/material.dart';

import '../styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text});

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(
              16,
            ),
          ),
        ),
        child: Text(text,
        style: Styles.tittleMedium18.copyWith(
          color: textColor,
          fontWeight: FontWeight.w900,
        ),),
      ),
    );
  }
}
