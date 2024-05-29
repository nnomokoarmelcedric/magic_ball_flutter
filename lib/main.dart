import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          elevation: 20,
          backgroundColor: Colors.blue[700],
          title: const Text(
            'Ask Me EveryThing',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: const MagicPage(),
      ),
    ),
  );
}

class MagicPage extends StatefulWidget {
  const MagicPage({super.key});

  @override
  State<MagicPage> createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  var answer = 3;
  void setAnswer() {
    setState(() {
      answer = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setAnswer();
              },
              child: Image.asset('images/ball$answer.png'),
            ),
          ),
        ],
      ),
    );
  }
}
