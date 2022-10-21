
import 'package:flutter/material.dart';

class fighterThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Level 3 Fighter')),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'images/Eladrin.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'A premade Level 3 Eladrin Fighter\n',
            softWrap: true,
          ),
        ]));
  }
}