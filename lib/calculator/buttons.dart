import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final bgColor;
  // ignore: prefer_typing_uninitialized_variables
  final textColor;
  final String textStr;

  const MyButtons({
    super.key,
    required this.bgColor,
    required this.textColor,
    required this.textStr,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          color: bgColor,
          child: Center(
            child: Text(
              textStr,
              style: TextStyle(
                color: textColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
