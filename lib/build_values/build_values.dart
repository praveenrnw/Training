import 'package:flutter/material.dart';
import 'package:training/build_values/codeRunner.dart';

class MyBuildValues extends StatelessWidget {
  const MyBuildValues({super.key});

  void _codeRun() {
    CodeRunner.runcode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          leading: const Icon(
            Icons.build,
            color: Colors.white,
            size: 25,
          ),
          title: const Text(
            'BUILT_VALUES',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: _codeRun,
                  child: const Text(
                    'Click Here',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
              const SizedBox(height: 10),
              const Text(
                'look into the terminal for output',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 25),
              const MyPopButton(),
            ],
          ),
        ));
  }
}

class MyPopButton extends StatelessWidget {
  const MyPopButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Text(
        'Home Page',
        style: TextStyle(
          color: Colors.deepPurple,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
