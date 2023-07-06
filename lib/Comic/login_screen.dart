import 'package:flutter/material.dart';

import 'login_screen2.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
           Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen2()));
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset('./asset/Zurag.PNG',fit: BoxFit.fill)),
      ),

    );
  }
}