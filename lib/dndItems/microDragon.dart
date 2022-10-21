
//micro dragon
import 'package:flutter/material.dart';

class micro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Micro Dragon')),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset(
              'images/mcd.jpg',
              // width: 250,
              // height: 250,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'The micro dragon is a very tiny small dragon that can fit in the palm of your hand.'
                ' It isnt aggressive and does not grow beyond this size.'
                ' it is very good at hiding in pockets or hanging on shoulders. Occassionally it will finds money and'
                ' can cast a small flame like prestidigitation.\n\n\n',
            softWrap: true,
          ),
        ]));
  }
}