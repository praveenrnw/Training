import 'package:flutter/material.dart';
import 'count_state_demo.dart';

class RootWidget extends StatefulWidget {
  const RootWidget({super.key});

  @override
  State<RootWidget> createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  int count = 0;
  void addCounter() {
    setState(() {
      count++;
    });
  }

  void removeCounter() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CountState(
      count: count,
      addCounter: addCounter,
      removeCounter: removeCounter,
      key: null,
      child: const InheritedWidgetDemo(),
    );
  }
}

class InheritedWidgetDemo extends StatelessWidget {
  const InheritedWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final counterState = CountState.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Inherited Widget',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Items add & remove',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
            ),
          ),
          const SizedBox(height: 100),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              '${counterState?.count}',
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 100,
                  color: Colors.deepPurple),
            ),
          ),
          const SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: FloatingActionButton(
                    backgroundColor: Colors.red,
                    onPressed: counterState?.removeCounter,
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
                    onPressed: counterState?.addCounter,
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
    );
  }
}
