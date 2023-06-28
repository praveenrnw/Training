import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training/state_notifier/click_change_notifier.dart';

class MyBlueSquare extends StatelessWidget {
  final double size;
  const MyBlueSquare({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'State Notifier Provider',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${context.watch<int>()}',
              style: TextStyle(
                color: colorVal(context.watch<int>()),
                fontSize: 100,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: FloatingActionButton(
                      backgroundColor: Colors.red,
                      onPressed: () =>
                          context.read<ClickStateNotifier>().decrement(),
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: FloatingActionButton(
                      backgroundColor: Colors.teal,
                      onPressed: () =>
                          context.read<ClickStateNotifier>().increment(),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Color colorVal(int val) {
  if (val >= 0) {
    return Colors.teal;
  }
  return Colors.red;
}
