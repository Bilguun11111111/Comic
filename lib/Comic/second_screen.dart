import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.lightGreen[400],
            child: Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        height: 10,
                        width: double.infinity,
                      ),
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
                                Icons.density_medium_outlined,
                                size: 25,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              width: 50,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 8,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightGreen[900],
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20.0), bottom: Radius.zero),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 60.0),
                          child: Text(
                            'What we found for you',
                            style: TextStyle(
                                fontSize: 35,
                                color: Color.fromARGB(191, 255, 255, 255),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 330.0, top: 8.0, left: 17),
                          child: Text(
                            'Top choices',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(173, 255, 255, 255)),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(50, 30, 50, 10),
                            child: ListView(
                              children: [
                                Padding(
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
                                        Container(
                                          
                                          height: 150,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                185, 255, 255, 255),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20.0),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                child: Container(
                                                  width: 160,
                                                  height: 150,
                                                  child: Image.asset(
                                                    './asset/poster.jpg',
                                                    fit: BoxFit.fitHeight,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 150,
                                                width: 10,
                                              ),
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 12.0,
                                                            left: 10.0),
                                                    child: Text(
                                                      'The Keyboard\'s Sharp Edge',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.brown),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      right: 158.0,
                                                      bottom: 5,
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          color: Colors.orange,
                                                        ),
                                                        Text(
                                                          '9.7',
                                                          style: TextStyle(
                                                            color:
                                                                Colors.orange,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    'The Story highlights the pain and trauma',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 12.0),
                                                    child: Text(
                                                      'of being targeted by online bullies and',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 5.0),
                                                    child: Text(
                                                      'how it can affect a person\'s mental and',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 151.0),
                                                    child: Text(
                                                      'emotional...',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 115.0,
                                                            top: 2),
                                                    child: Text(
                                                      'Cyberbullying',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              174, 0, 0, 0),
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
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
                                                  children: [],
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
                                        Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 400,
                                          height: 150,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                185, 255, 255, 255),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20.0),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                child: Container(
                                                  width: 160,
                                                  height: 150,
                                                  child: Image.asset(
                                                    './asset/poster.jpg',
                                                    fit: BoxFit.fitHeight,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 150,
                                                width: 10,
                                              ),
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 12.0,
                                                            left: 1.0),
                                                    child: Text(
                                                      'The Pressure to Conform ',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.brown),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      right: 158.0,
                                                      bottom: 5,
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          color: Colors.orange,
                                                        ),
                                                        Text(
                                                          '9.2',
                                                          style: TextStyle(
                                                            color:
                                                                Colors.orange,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 6.0),
                                                    child: Text(
                                                      'Once upon a time, there was a group of',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 31.0),
                                                    child: Text(
                                                      'friends who went to the same high',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 38.0),
                                                    child: Text(
                                                      'school. They were all with unique',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 138.0),
                                                    child: Text(
                                                      'personalities...',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 115.0,
                                                            top: 2),
                                                    child: Text(
                                                      'Cyberviolence',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              174, 0, 0, 0),
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
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
                                                  children: [],
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
                                        Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 400,
                                          height: 150,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                185, 255, 255, 255),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20.0),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                child: Container(
                                                  width: 160,
                                                  height: 150,
                                                  child: Image.asset(
                                                    './asset/poster.jpg',
                                                    fit: BoxFit.fitHeight,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 150,
                                                width: 10,
                                              ),
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 12.0,
                                                            right: 93.0),
                                                    child: Text(
                                                      'Breaking Free',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.brown),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      right: 158.0,
                                                      bottom: 5,
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          color: Colors.orange,
                                                        ),
                                                        Text(
                                                          '9.7',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .orange),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 5.0),
                                                    child: Text(
                                                      'Nina had always been a shy person, but',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 23.0),
                                                    child: Text(
                                                      'when she started college, her social',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 9.0),
                                                    child: Text(
                                                      'anxiety began to escalate. She found it',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 148.0),
                                                    child: Text(
                                                      'difficult to ...',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 115.0,
                                                            top: 2),
                                                    child: Text(
                                                      'Social stalking',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              174, 0, 0, 0),
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
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
                                                  children: [],
                                                ),
                                              ),
                                            ],
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
                            color: Colors.lightGreen[400],
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
          Column(
            children: [
              Flexible(
                flex: 8,
                child: Container()),
              Flexible(
                flex:80,
                child: Container(
                  width: 230,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      Icon(
                        Icons.search,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        'Search stories and authors',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
