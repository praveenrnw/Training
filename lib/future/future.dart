import 'dart:math';

import 'package:flutter/material.dart';

class MyFutureClass extends StatelessWidget {
  const MyFutureClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'Future',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 150),
              ),
              onPressed: () async {
                await multipleFutures();
              },
              child: const Text(
                'Click',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Check terminal for future generated values with delay',
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w700,
                  fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}

Future myFuture(int id, int duration) async {
  await Future.delayed(Duration(seconds: duration));
  debugPrint('Delay complete for future $id');
  return true;
}

Future multipleFutures() async {
  var futures = <Future>[];
  for (int i = 0; i < 5; i++) {
    futures.add(myFuture(i, Random(i).nextInt(5)));
  }
  await Future.wait(futures);
  debugPrint('All the future has completed');
}
