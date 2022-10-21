import 'package:flutter/material.dart';

class rangerFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Level 4 Ranger')),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'images/ranger.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'A premade Level 4 Ranger\n',
            softWrap: true,
          ),
        ]));
  }
}