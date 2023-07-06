import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp/Comic/comic.dart';
import 'package:myapp/Comic/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightGreen[700],
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 25,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen()));
                          },
                          child: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 40,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        const Text('More comics on',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        Text(
                          'Cyberbullying',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 7,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 40,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.amber[200],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 13, right: 13, top: 4, bottom: 4),
                              child: Text(
                                'Trending',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.amber[200],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 13, right: 13, top: 4, bottom: 4),
                              child: Text(
                                'Top free',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.amber[200],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 13, right: 13, top: 4, bottom: 4),
                              child: Text(
                                'Advice',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          Container(
                            width: 35,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 8,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.amber[100],
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20.0), bottom: Radius.zero),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: ListView(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ComicView()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
                                child: Container(
                                  width: 800,
                                  decoration: BoxDecoration(
                                    color: Colors.amber[200],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20.0),
                                        child: Image.asset(
                                          './asset/poster.jpg',
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 110, 0, 0),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 1.0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'The keyboard\'s',
                                                    style: TextStyle(
                                                        fontSize: 19,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 1.0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Sharp Edge',
                                                    style: TextStyle(
                                                        fontSize: 19,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: Container(
                                width: 800,
                                decoration: BoxDecoration(
                                    color: Colors.amber[200],
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Image.asset(
                                        './asset/poster.jpg',
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 110, 0, 0),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 1.0),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'The Keyboard\'s',
                                                  style: TextStyle(
                                                      fontSize: 19,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 1.0),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Sharp Edge',
                                                  style: TextStyle(
                                                      fontSize: 19,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: Container(
                                width: 800,
                                decoration: BoxDecoration(
                                    color: Colors.amber[200],
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Image.asset(
                                        './asset/poster.jpg',
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 130, 0, 0),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 1.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Stalker',
                                              style: TextStyle(
                                                  fontSize: 19,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[700],
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(35),
                          bottom: Radius.zero,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                              ),
                              InkWell(
                                onTap: () {
                                  print("Home");
                                },
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.home,
                                      size: 30,
                                    ),
                                    Text('Home'),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.account_circle_outlined,
                                    size: 30,
                                  ),
                                  Text('Profile')
                                ],
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.settings,
                                    size: 30,
                                  ),
                                  Text('Settings')
                                ],
                              ),
                              Container(
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
