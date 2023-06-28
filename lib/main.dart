import 'package:flutter/material.dart';
import 'package:training/build_values/build_values.dart';
import 'package:training/future/future.dart';
import 'package:training/http_request/httpMain.dart';
import 'package:training/inherited_widgets/root_widget.dart';
import 'package:training/login_register_ui/pages/auth_page.dart';
import 'package:training/provider_state_management/eligibility_screen.dart';
import 'package:training/state_notifier/my_state_app.dart';
import 'user_details/user_details.dart';
import 'list_of_colors/colorsList.dart';
import 'package:training/Calculator/calculator.dart';
import 'button_color_change/button_color_change.dart';
import 'sort/sort.dart';
import 'form/form.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
        child: FittedBox(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(
              btnName: 'Login Page',
              page: AuthPage(),
            ),
            SizedBox(height: 10),
            MyButton(
              btnName: 'User Details',
              page: UserDetails(),
            ),
            SizedBox(height: 10),
            MyButton(
              btnName: 'List Of Colors',
              page: ColorsList(),
            ),
            SizedBox(height: 10),
            MyButton(
              btnName: 'Calculator',
              page: Calculator(),
            ),
            SizedBox(height: 10),
            MyButton(
              btnName: 'Button Color Change',
              page: BtnColorChange(),
            ),
            SizedBox(height: 10),
            MyButton(
              btnName: 'Sort',
              page: Sort(),
            ),
            SizedBox(height: 10),
            MyButton(
              btnName: 'Form',
              page: MyForm(),
            ),
            SizedBox(height: 10),
            MyButton(
              btnName: 'Built Values',
              page: MyBuildValues(),
            ),
            SizedBox(height: 10),
            MyButton(
              btnName: 'HTTP',
              page: HttpMain(),
            ),
            SizedBox(height: 10),
            MyButton(
              btnName: 'Inherited Widget',
              page: RootWidget(),
            ),
            SizedBox(height: 10),
            MyButton(
              btnName: 'Provider State Management',
              page: EligiblityScreen(),
            ),
            SizedBox(height: 10),
            MyButton(
              btnName: 'State Notifier Provider',
              page: MyStateApp(),
            ),
            SizedBox(height: 10),
            MyButton(
              btnName: 'Future',
              page: MyFutureClass(),
            ),
            SizedBox(height: 10),
          ],
        )),
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
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.lime[500],
        borderRadius: BorderRadius.circular(4),
      ),
      child: GestureDetector(
        onTap: () {
          /*Navigator.push(
            context,
            MaterialPageRoute(
              builder: (p) => page,
            ),
          );*/
          Get.to(page);
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
