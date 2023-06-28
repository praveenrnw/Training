import 'package:flutter/material.dart';
import 'package:training/list_of_colors/colors.dart';
import 'package:training/main.dart';
import 'package:get/get.dart';

class ColorsList extends StatefulWidget {
  const ColorsList({super.key});

  @override
  State<ColorsList> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ColorsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      appBar: AppBar(
          leading: const Icon(Icons.color_lens_outlined,
              color: Colors.black, size: 25),
          title: const Text('Flutter Colors',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontSize: 20,
              )),
          backgroundColor: Colors.greenAccent[100]),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: MyColors(bgColor: Colors.red, colorName: 'RED'),
            ),
            SizedBox(height: 5),
            Center(
              child: MyColors(bgColor: Colors.yellow, colorName: 'YELLOW'),
            ),
            SizedBox(height: 5),
            Center(
              child: MyColors(bgColor: Colors.green, colorName: 'GREEN'),
            ),
            SizedBox(height: 5),
            Center(
              child: MyColors(bgColor: Colors.blue, colorName: 'BLUE'),
            ),
            SizedBox(height: 5),
            Center(
              child: MyColors(bgColor: Colors.white, colorName: 'WHITE'),
            ),
            SizedBox(height: 5),
            Center(
              child: MyColors(bgColor: Colors.orange, colorName: 'ORANGE'),
            ),
            SizedBox(height: 5),
            Center(
              child: MyColors(bgColor: Colors.purple, colorName: 'PURPLE'),
            ),
            SizedBox(height: 5),
            Center(
              child: MyColors(bgColor: Colors.grey, colorName: 'GREY'),
            ),
            SizedBox(height: 5),
            Center(
              child: MyColors(bgColor: Colors.brown, colorName: 'BROWN'),
            ),
            SizedBox(height: 5),
            Center(
              child: MyColors(bgColor: Colors.lime, colorName: 'LIME'),
            ),
            MyPopButton(),
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
      onTap: () {
        //Navigator.pop(context);
        Get.back();
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
