import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BtnColorChange extends StatefulWidget {
  const BtnColorChange({super.key});

  @override
  State<BtnColorChange> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<BtnColorChange> {
  bool click = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      appBar: AppBar(
        backgroundColor: Colors.black12,
        leading: const Icon(
          Icons.change_history,
          color: Colors.white,
          size: 25,
        ),
        title: const Text(
          'Button Change',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  click = !click;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal[400],
                foregroundColor: Colors.teal[400],
              ),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Icon(
                  click ? CupertinoIcons.heart_fill : CupertinoIcons.suit_heart,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const MyPopButton(),
          ],
        ),
      ),
    );
  }
}

class MyPopButton extends StatelessWidget {
  const MyPopButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: const Text(
        'Home Page',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}