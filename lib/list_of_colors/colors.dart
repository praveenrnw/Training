import 'package:flutter/material.dart';

class MyColors extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final bgColor;
  final String colorName;

  const MyColors({
    super.key,
    required this.bgColor,
    required this.colorName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(2),
        child: Container(
          height: 50,
          width: 500,
          color: bgColor,
          child: Center(
            child: Text(
              colorName,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

