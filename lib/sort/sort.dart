import 'package:flutter/material.dart';

class Sort extends StatefulWidget {
  const Sort({super.key});

  @override
  State<Sort> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Sort> {
  bool ascend = true;
  String name = 'Descending';
  @override
  Widget build(BuildContext context) {
    List<String> colorNames = [
      'RED', 'BLUE', 'GREEN', 'YELLOW', 'PINK'
    ];
    colorNames.sort();
    Iterable<String> list = ascend ? colorNames : colorNames.reversed;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: const Icon(
          Icons.sort,
          color: Colors.white,
          size: 25,
        ),
        title: const Text(
          'SORT',
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
            for(var x in list)
              Text(
                x,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Divider(
                thickness: 1.5,
                color: Colors.black,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  ascend = !ascend;
                  name = ascend ? 'Descending' : 'Ascending';
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal[400],
                foregroundColor: Colors.teal[400],
              ),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
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
          color: Colors.blueGrey,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}