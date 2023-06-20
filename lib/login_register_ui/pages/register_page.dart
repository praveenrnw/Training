import 'package:flutter/material.dart';
import 'package:training/login_register_ui/components/my_text_field.dart';
import 'package:training/login_register_ui/components/my_button.dart';
import 'package:training/login_register_ui/components/square_tile.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;

  const RegisterPage({
    super.key,
    required this.showLoginPage,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUpFunction(){
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const Icon(Icons.face, size: 50),
                const SizedBox(height: 25),
                const Text('REGISTER',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 40),
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),
                const SizedBox(height: 40),
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 40),
                MyTextField(
                  controller: passwordController,
                  hintText: 'Confirm Password',
                  obscureText: true,
                ),
                const SizedBox(height: 25),
                MyPageButton(
                  onTap: signUpFunction,
                  btnName: 'SIGN UP',
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                            'or continue with',
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 18,
                            )
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MySquareTile(
                        imgPath: 'lib/login_register_ui/images/google.png',
                      ),
                      SizedBox(width: 40),
                      MySquareTile(
                        imgPath: 'lib/login_register_ui/images/facebook.png',
                      ),
                    ]
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already a member?',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.showLoginPage,
                      child: Text(
                        'Login Now',
                        style: TextStyle(
                          color: Colors.blue[500],
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                const MyPopButton(),
              ]
          ),
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