import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final Color buttonColor;
  final Color textColor;
  final double fontSize;
  final EdgeInsetsGeometry padding;

  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.buttonColor,
    this.textColor = Colors.blueGrey,
    this.fontSize = 16.0,
    this.padding = const EdgeInsets.all(20),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(40),
        ),
        padding: padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // text
            Text(
              text,
              style: TextStyle(color: textColor, fontSize: fontSize),
            ),
          ],
        ),
      ),
    );
  }
}
