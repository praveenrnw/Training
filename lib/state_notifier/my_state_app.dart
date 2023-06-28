import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:training/main.dart';
import 'package:training/state_notifier/blue_square.dart';
import 'package:training/state_notifier/click_change_notifier.dart';

class MyStateApp extends StatelessWidget {
  const MyStateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<ClickStateNotifier, int>(
      create: (context) => ClickStateNotifier(0),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyBlueSquare(size: 10.0),
      ),
    );
  }
}
