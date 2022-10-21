import 'app/pages.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'dndSpells/spellbook.dart';

void main() {
  runApp(const MyApp());
}

//Initial app/adds theme to other pages besides main
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Remove the debug banner
        debugShowCheckedModeBanner: false,
        title: 'My Dnd App',
        theme: ThemeData.dark(),
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//third party app editions using launchURL package
  site() {
    const url = 'https://thepalad1n.github.io/dndsite/';
    launchUrlString(url);
  }

  giffyglyph() {
    const url = 'https://giffyglyph.com/monstermaker/app/';
    launchUrlString(url);
  }

  dice() {
    const url = 'https://rgbstudios.org/dnd-dice/?m=MCAwIDAgMCAwIDAgMCAwIDA=';
    launchUrlString(url);
  }

  reroll() {
    const url = 'https://rgbstudios.org/dnd-dice/char.html?r=';
    launchUrlString(url);
  }

  spellSearch() {
    const url = 'https://rgbstudios.org/dnd-dice/spell.html?q=Magic%20Missile';
    launchUrlString(url);
  }

  @override
  Widget build(BuildContext context) {
    //widget for pain text section
    //creation of the main page of the app
    return MaterialApp(
      title: 'My Dnd App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.account_tree_outlined),
                title: TextButton(
                  onPressed: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Classes())),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                  child: const Text('Classes'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.emoji_people),
                title: TextButton(
                  onPressed: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Races())),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                  child: const Text('Races'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: TextButton(
                  onPressed: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => NPCs())),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                  child: const Text('Enemies/NPCs'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: TextButton(
                  onPressed: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Items())),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                  child: const Text('Items'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.solar_power),
                title: TextButton(
                  onPressed: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Spells())),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                  child: const Text('Spell Book'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.newspaper_sharp),
                title: TextButton(
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Premades())),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                  child: const Text('Premades'),
                ),
              ),
            ],
          ),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              'My DND Stuff',
              style: TextStyle(
                fontSize: 40,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 3
                  ..color = Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(
              'images/dndcover.jpg',
              // width: 600,
              // height: 240,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
              'This is a collection of all my homebrewed DND material that I have been creating over the many months of playing. It inlucdes:\n'),
          const Text(
            //using emoji index for this section
            '📚 Classes 📚\n'
            '🧑 Races 🧑\n'
            '✊ Enemies ✊\n'
            '🪄 Spells 🪄\n'
            '🗡️ Items 🗡️\n',
            textAlign: TextAlign.center,
          ),
          const Text(
              'The goal of the app is just to keep adding to my collection and then have a quick resource to access a bunch of homebrew material.\n\n'
              'Helpful Resources Below:\n'),
          ElevatedButton(
            onPressed: giffyglyph,
            style: ElevatedButton.styleFrom(primary: Colors.grey),
            child: const Text('Giffyglyph Monster Maker'),
          ),
          ElevatedButton(
            onPressed: dice,
            style: ElevatedButton.styleFrom(primary: Colors.grey),
            child: const Text('Dice Roller'),
          ),
          ElevatedButton(
            onPressed: reroll,
            style: ElevatedButton.styleFrom(primary: Colors.grey),
            child: const Text('Roll Character Stats'),
          ),
          ElevatedButton(
            onPressed: spellSearch,
            style: ElevatedButton.styleFrom(primary: Colors.grey),
            child: const Text('Spell Searcher'),
          ),
          ElevatedButton(
            onPressed: site,
            style: ElevatedButton.styleFrom(primary: Colors.grey),
            child: const Text('Checkout Full Site'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
                'Credit to Justin Golden(Dice Roller/Spell Search) & Giffyglyph(Monster Maker)'),
          )
        ]),
      ),
    );
  }
}
