import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: EdgeInsets.all(100),
      child: Container(
        color: Colors.blue,
        padding: EdgeInsets.only(top: 100),
        child: Container(
          color: Colors.purple,
          padding: EdgeInsets.only(left: 100),
          child: Container(
            color: Colors.green,
            padding: EdgeInsets.only(bottom: 100),
            child: Container(
              color: Colors.yellow,
              padding: EdgeInsets.all(40),
            )
          )
        )
      )
    );
  }
}
