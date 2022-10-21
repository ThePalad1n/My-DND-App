import 'package:flutter/material.dart';

class fighterEleven extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Level 11 Fighter')),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'images/goliath.png',
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'A premade Level 11 fighter\n',
            softWrap: true,
          ),
        ]));
  }
}