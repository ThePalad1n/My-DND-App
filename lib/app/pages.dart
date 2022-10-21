//Class Page
import 'package:dnd_app/dndClasses/gambit.dart';
import 'package:dnd_app/dndEnemies/gokuBlack.dart';
import 'package:dnd_app/dndEnemies/gokuBlackssr.dart';
import 'package:dnd_app/dndEnemies/zamasu.dart';
import 'package:dnd_app/dndEnemies/zamasuFused.dart';
import 'package:dnd_app/dndItems/microDragon.dart';
import 'package:dnd_app/dndItems/pocketCow.dart';
import 'package:dnd_app/dndNPCs/hornedQuicklingDevil.dart';
import 'package:dnd_app/dndPremades/Shield_Master.dart';
import 'package:dnd_app/dndPremades/Sorcerer_Rouge.dart';
import 'package:dnd_app/dndPremades/lvlFiveBard.dart';
import 'package:dnd_app/dndPremades/lvlFiveRogue.dart';
import 'package:dnd_app/dndPremades/lvlFourWarlock.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import '../dndClasses/gw.dart';
import '../dndClasses/ss.dart';
import '../dndPremades/baja.dart';
import '../dndPremades/lvlElevenFighter.dart';
import '../dndPremades/lvlFourRanger.dart';
import '../dndPremades/lvlThreeFighter.dart';
import 'buttons.dart';
import 'titles.dart';

class Classes extends StatelessWidget {
  const Classes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Classes', style: TextStyle(color: Colors.white))),
      body: ListView(
        children: [
          Row(children: [
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => gw())),
              child: Padding(
                padding: const EdgeInsets.only(top:16.0, bottom: 16.0),
                child: Image.asset(
                  'images/pain.gif',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                  // Fixes border issues
                ),
              ),
            ),
            titleSectiongw(),
            buttonSectiongw(),
          ]),
          Row(children: [
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => saiyan())),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Image.asset(
                  'images/saiyan.gif',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100, // Fixes border issues
                ),
              ),
            ),
            titleSectionss(),
            buttonSectionss(),
          ]),
          Row(children: [
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => gambit())),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Image.asset(
                  'images/cards.gif',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100, // Fixes border issues
                ),
              ),
            ),
            titleSectiong(),
            buttonSectiong(),
          ]),
        ],
      ),
    );
  }
}

//Race Page
class Races extends StatelessWidget {
  const Races({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Races', style: TextStyle(color: Colors.white))),
      body: ListView(
        children: [
          Row(children: [
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => saiyan())),
              child: Padding(
                padding: const EdgeInsets.only(top:16.0, bottom: 16.0),
                child: Image.asset(
                  'images/saiyan.gif',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100, // Fixes border issues
                ),
              ),
            ),
            titleSectionss(),
            buttonSectionss(),
          ])
        ],
      ),
    );
  }
}

//Npc and enemies Page
class NPCs extends StatelessWidget {
  const NPCs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('NPCs', style: TextStyle(color: Colors.white))),
      body: ListView(
        children: [
          Row(children: [
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => hqd())),
              child: Padding(
                padding: const EdgeInsets.only(top:16.0, bottom: 16.0),
                child: Image.asset(
                  'images/devil.png',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100, // Fixes border issues
                ),
              ),
            ),
            titleSectionhqd(),
            buttonSectionhqd(),
          ]),
          Row(children: [
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => gokublack())),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Image.asset(
                  'images/gokublack.jpg',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100, // Fixes border issues
                ),
              ),
            ),
            titleSectiongokublack(),
            buttonSectiongokublack(),
          ]),
          Row(children: [
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => gokublackssr())),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Image.asset(
                  'images/gokublackssr.jpg',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100, // Fixes border issues
                ),
              ),
            ),
            titleSectiongokublackssr(),
            buttonSectiongokublackssr(),
          ]),
          Row(children: [
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => zamasu())),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Image.asset(
                  'images/zamasu.jpg',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100, // Fixes border issues
                ),
              ),
            ),
            titleSectionzamasu(),
            buttonSectionzamasu(),
          ]),
          Row(children: [
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => fusedzamasu())),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Image.asset(
                  'images/zamasufused.jpg',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100, // Fixes border issues
                ),
              ),
            ),
            titleSectionfusedzamasu(),
            buttonSectionfusedzamasu(),
          ]),
        ],
      ),
    );
  }
}

//Items Page
class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Items', style: TextStyle(color: Colors.white))),
      body: ListView(
        children: [
          Row(children: [
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => micro())),
              child: Padding(
                padding: const EdgeInsets.only(top:16.0, bottom: 16.0),
                child: Image.asset(
                  'images/mcd.jpg',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            titleSectionmd(),
            buttonSectionmd(),
          ]),
          Row(children: [
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => pocketCow())),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Image.asset(
                  'images/cow.gif',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            titleSectionpc(),
            buttonSectionpc(),
          ]),
        ],
      ),
    );
  }
}

//Spells Page
class Premades extends StatelessWidget {
  const Premades({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Premade Sheets',
              style: TextStyle(color: Colors.white))),
      body: ListView(
        children: [
          Row(children: [
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => sr())),
              child: Padding(
                padding: const EdgeInsets.only(top:16.0, bottom: 16.0),
                child: Image.asset(
                  'images/sr.png',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            titleSectionsr(),
            buttonSectionsr(),
          ]),
          Row(children: [
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => sm())),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Image.asset(
                  'images/shieldmaster.jpg',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            titleSectionsm(),
            buttonSectionsm(),
          ]),
          Row(children: [
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => baja())),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Image.asset(
                  'images/dwarf.jpg',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            titleSectionBaja(),
            buttonSectionBaja(),
          ]),
          Row(children: [
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => fighterThree())),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Image.asset(
                  'images/Eladrin.jpg',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            titleSectionFighterThree(),
            buttonSectionFighterThree(),
          ]),
          Row(children: [
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => rogueFive())),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Image.asset(
                  'images/tiefrogue.png',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            titleSectionRogueFive(),
            buttonSectionRogueFive(),
          ]),
          Row(children: [
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => rangerFour())),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Image.asset(
                  'images/ranger.jpg',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            titleSectionRangerFour(),
            buttonSectionRangerFour(),
          ]),
          Row(children: [
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => bardFive())),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Image.asset(
                  'images/warforged.jpg',
                  fit: BoxFit.fitHeight,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            titleSectionBardFive(),
            buttonSectionBardFive(),
          ]),
          Row(children: [
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => fighterEleven())),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Image.asset(
                  'images/goliath.png',
                  fit: BoxFit.fitHeight,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            titleSectionFighterEleven(),
            buttonSectionFighterEleven(),
          ]),
          Row(children: [
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => warlockFour())),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Image.asset(
                  'images/warlockOrc.jpg',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            titleSectionWarlockFour(),
            buttonSectionWarlockFour(),
          ]),
        ],
      ),
    );
  }
}
