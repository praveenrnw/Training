import 'package:flutter/material.dart';

class MyLabel extends StatelessWidget {
  final icon;
  final String str;

  const MyLabel({
    super.key,
    required this.icon,
    required this.str,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.deepPurple,
          size: 25,
        ),
        const SizedBox(width: 10),
        Text(
          str,
          style: const TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
