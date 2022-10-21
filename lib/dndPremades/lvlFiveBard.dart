import 'package:flutter/material.dart';

class bardFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Level 5 Bard')),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'images/warforged.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'A premade Level 5 Bard  \n',
            softWrap: true,
          ),
        ]));
  }
}