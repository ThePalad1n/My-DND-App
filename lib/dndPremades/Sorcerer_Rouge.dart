
import 'package:flutter/material.dart';

class sr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Level 17 Multi Class ')),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'images/sr.png',
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'A premade Level 17 Multi Class Sorcerer(15) and Rougue(2)\n',
            softWrap: true,
          ),
        ]));
  }
}