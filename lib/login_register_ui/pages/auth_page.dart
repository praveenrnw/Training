import 'package:flutter/material.dart';
import 'package:training/login_register_ui/pages/login_page.dart';
import 'package:training/login_register_ui/pages/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  // ignore: non_constant_identifier_names
  bool IsLoginPage = true;

  void toggleScreen(){
    setState((){
      IsLoginPage = !IsLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(IsLoginPage){
      return LoginPage(showRegisterPage: toggleScreen);
    }
    else{
      return RegisterPage(showLoginPage: toggleScreen);
    }
  }
}

