import 'package:flutter/material.dart';
import 'package:training/login_register_ui/pages/auth_page.dart';
import 'user_details/user_details.dart';
import 'list_of_colors/colorsList.dart';
import 'package:training/Calculator/calculator.dart';
import 'button_color_change/button_color_change.dart';
import 'sort/sort.dart';
import 'form/form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime[500],
        leading: const Icon(
            Icons.on_device_training_outlined,
          color: Colors.deepPurple,
          size: 25,
        ),
        title: const Text(
          'Training',
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(btnName: 'Login Page', page: AuthPage(),),
            SizedBox(height: 30),
            MyButton(btnName: 'User Details', page: UserDetails(),),
            SizedBox(height: 30),
            MyButton(btnName: 'List Of Colors', page: ColorsList(),),
            SizedBox(height: 30),
            MyButton(btnName: 'Calculator', page: Calculator(),),
            SizedBox(height: 30),
            MyButton(btnName: 'Button Color Change', page: BtnColorChange(),),
            SizedBox(height: 30),
            MyButton(btnName: 'Sort', page: Sort(),),
            SizedBox(height: 30),
            MyButton(btnName: 'Form', page: MyForm(),),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String btnName;
  final page;

  const MyButton({
    super.key,
    required this.btnName,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.lime[500],
        borderRadius: BorderRadius.circular(4),
      ),
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (p) => page,
            ),
          );
        },
        child: Text(
          btnName,
          style: const TextStyle(
            color: Colors.deepPurple,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
