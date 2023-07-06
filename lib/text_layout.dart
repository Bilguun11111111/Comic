import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/widgets/container.dart';

import 'package.flutter/material.dart';
class TextLayout extends StatelessWidget {
  const TextLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Нэр: Билгүүн',
        style: TextStyle(
          color: Colors.deepPurple,
        ),
      ),
      Text('Нас: 16',
      style: TextStyle(
        color: Colors.deepPurple,
      ),
      ),
      Text('Хот: Эрдэнэт',
      style: TextStyle(
        color: Colors.deepPurple,
      ),
      ),
      Text('Хаяг: 11-15a',
      style: TextStyle(
        color: Colors.deepPurple,
      ),
      ),
      Text('Ажил: Байхгүй',
      style: TextStyle(
        color: Colors.deepPurple,
      ),
      ),
      Text('Боловсрол: 19р сургууль',
      style: TextStyle(
        color: Colors.deepPurple,
      ),
      ),
      Text('Утасны дугаар: +976 99359312',)
    ]);
  }
}





