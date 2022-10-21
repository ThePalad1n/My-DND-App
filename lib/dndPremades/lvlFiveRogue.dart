
import 'package:flutter/material.dart';

class rogueFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Level 5 Rogue')),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'images/tiefrogue.png',
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'A premade Level 5 Tiefling Rogue\n',
            softWrap: true,
          ),
        ]));
  }
}