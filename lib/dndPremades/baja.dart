import 'package:flutter/material.dart';

class baja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Level 11 Wizard')),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'images/dwarf.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'A premade Level 11 Wizard with a spell cannon\n',
            softWrap: true,
          ),
        ]));
  }
}