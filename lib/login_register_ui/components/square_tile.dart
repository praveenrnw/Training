import 'package:flutter/material.dart';

class MySquareTile extends StatelessWidget {
  final String imgPath;

  const MySquareTile({
    super.key,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Image.asset(
          imgPath,
        height: 50,
      ),
    );
  }
}
