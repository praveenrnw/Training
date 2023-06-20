import 'package:flutter/material.dart';

class MyPageButton extends StatelessWidget {
  final Function()? onTap;
  final String btnName;

  const MyPageButton({
    super.key,
    required this.onTap,
    required this.btnName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
        child: Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
                child: Text(btnName,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20))
            )
        )
    );
  }
}
