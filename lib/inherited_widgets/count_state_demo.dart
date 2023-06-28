import 'package:flutter/material.dart';

class CountState extends InheritedWidget {
  final int count;
  final Widget child;
  final VoidCallback addCounter;
  final VoidCallback removeCounter;

  const CountState({
    required Key? key,
    required this.count,
    required this.child,
    required this.addCounter,
    required this.removeCounter,
  }) : super(key: key, child: child);

  static CountState? of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<CountState>());
  }

  @override
  bool updateShouldNotify(CountState oldWidget) {
    return count != oldWidget.count;
  }
}
