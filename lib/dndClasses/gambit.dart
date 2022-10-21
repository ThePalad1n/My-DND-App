import 'package:flutter/material.dart';

class gambit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Gambit')),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'images/card.gif',
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'Gambit\n\n'
                'This is a class between a deck of many things and a spell caster.'
                'The strength of this class is long battles and the weakness is '
                'potentially close ranged pvp.\n'
                'The player will have a deck that they cannot change inside battle. '
                'Starting off with one mana crystal the player will gain an additional '
                'mana crystal at the beginning of their next turn. The player may only '
                'have 5 cards drawn from their deck and in their hand at one time. The '
                'player may only draw one card at the start of their next turn, unless '
                'otherwise specified. Each card would be a different cost ranging from '
                'temp magic item to summoned beasts. After combat the player returns to '
                '1 mana and puts the cards away in their deck. As the player progresses the'
                ' max amount of manna increases and new cards are discovered.\n\n',
            softWrap: true,
          )
        ]));
  }
}