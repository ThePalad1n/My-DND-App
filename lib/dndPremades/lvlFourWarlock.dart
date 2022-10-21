import 'package:flutter/material.dart';

class warlockFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Level 4 Warlock')),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'images/warlockOrc.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'A premade Level 4 Warlock\n',
            softWrap: true,
          ),
        ]));
  }
}