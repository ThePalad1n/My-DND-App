//horned quickling devil
import 'package:flutter/material.dart';

class hqd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Horned Quickling Devil')),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(
            'images/devil.png',
            fit: BoxFit.cover,
          ),
        ),
        const Center(
          child: Text(
            'Horned quickling devil - Small fiend (devil), neutral evil a horned devil'
            'with the speed of a quickling found in the forest and challenged him to a'
            ' race. after being defeated we formed a bond solely for sparring. Noth'
            ' finds me very intriguing as no mortal has ever been interested in '
            'fighting him. Evenly matched but Noth usually comes out on top. He may'
            ' not admit it but he likes the perseverance and watching Mooshro grow.'
            ' He travels with me doing his own thing with two mutual agreements. '
            'Never attacks my party members and never interferes with my fight no '
            'matter the outcome. Wears a magic ring and goes back home here and '
            'there but is always able to locate mooshro through a red earing he wears.',
            softWrap: true,
          ),
        )
      ]),
    );
  }
}
