import 'package:flutter/material.dart';

class pocketCow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Pocket Cow')),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'images/cow.gif',
// width: 600,
// height: 240,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'Pocket Cow\n\n'
                'The pocket cow is a uncommon magical item. It is roughly the size of'
                ' a small stone and has a resembalence of a cow. Then thrown and '
                'the command word "moo" is said the cow grows to actually size. '
                'When it impacts an object it deals 6d6 bludg damage.\n\n',
            softWrap: true,
          )
        ]));
  }
}