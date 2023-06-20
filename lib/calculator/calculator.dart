import 'package:flutter/material.dart';
import 'package:training/Calculator/buttons.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _HomePageState();
}

class _HomePageState extends State<Calculator> {
  final List<String> buttons = [
    'C', 'DEL', '%', '/',
    '9', '8', '7', 'x',
    '6', '5', '4', '-',
    '3', '2', '1', '+',
    '0', '.', 'ANS', '=',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: const Icon(Icons.calculate, color: Colors.white, size: 30),
        title: const Text(
          'Calculator',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 22,
          ),
        ),
      ),
      backgroundColor: Colors.deepPurple[100],
      body: Column(
          children: <Widget>[
            const Expanded(
              child: MyPopButton(),
            ),
            Expanded(
              flex: 2,
              child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index){
                    if(index == 0){
                      return MyButtons(
                        bgColor: Colors.green[400],
                        textColor: Colors.white,
                        textStr: buttons[index],
                      );
                    }else if(index == 1){
                      return MyButtons(
                        bgColor: Colors.red[400],
                        textColor: Colors.white,
                        textStr: buttons[index],
                      );
                    }else{
                      return MyButtons(
                        bgColor: isOperator(buttons[index]) ? Colors.deepPurple : Colors.deepPurple[50],
                        textColor: isOperator(buttons[index]) ? Colors.white : Colors.deepPurple,
                        textStr: buttons[index],
                      );
                    }
                  }
              ),
            ),
          ]
      ),
    );
  }

  bool isOperator(String x){
    if(x == '%' || x == '*' || x == '-' || x == '+' || x == '=' || x == '/' || x == 'x'){
      return true;
    }
    return false;
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
