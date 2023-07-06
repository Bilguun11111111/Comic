import 'package:flutter/material.dart';
import 'package:myapp/Comic/first_screen.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
              child: Image.asset(
                './asset/back.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Column(
              children: [
                Expanded(child: Container()),
                Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xfff9ebc7),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30.0),
                        bottom: Radius.zero,
                      )),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "Let's know each other better!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xFF7c5531),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Text(
                                  "Create your account",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    color: Color.fromARGB(255, 170, 138, 106),
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Name:',
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Email:',
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Password:',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                       SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        onPressed: (() {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => FirstScreen()));
                        }),
                        child: Text('Sign up'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xff8d5529),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        onPressed: (() {}),
                        child: Text('Sign up with Facebook'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xff8d5529),
                          ),
                        ),
                      ),
                      SizedBox(
                        height:20.0 ,
                      ),
                      Text('Already have an account? Log in', style: TextStyle(color: Color.fromARGB(255, 69, 33, 5)),),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
