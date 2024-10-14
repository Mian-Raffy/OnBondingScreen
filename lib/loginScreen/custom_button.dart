import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget text;
  final VoidCallback onPressed;
  final Color? color;
  final bool withShadow;
  final Color textColor;

  CustomButton({
    required this.textColor,
    required this.text,
    required this.onPressed,
    this.color,
    this.withShadow = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: withShadow
              ? [
                  BoxShadow(
                    offset: Offset(0, 2),
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                  ),
                ]
              : [],
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: DefaultTextStyle(
            style: TextStyle(color: textColor),
            child: text,
          ),
        ),
      ),
    );
  }
}
