import 'package:flutter/material.dart';

//pain
class gw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Gravity Wizard Pain')),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset(
              'images/path.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Text(
              '*Note: Path of the rinnegan [wizard] (human var: uchiha) no extra feats\n\n You must be a an uchiha'
                  'and the feats are built into this race. Make sure you still add the'
                  ' bonuses from the human variant, just do not add an additional feat. As for class you progress the'
                  ' same as a regular wizard but with the additions from this feat/race mentioned below.\n\n'
                  'You start with a universal pull and almighty push cantrip. All mighty push can also be'
                  'used at higher levels but only progresses with the spell slots of the wizard. 10ft + 10ft*lvl and'
                  ' level d6 force damage with half on successful dex save. Universal pull may be used at higher'
                  ' level 10ft + 10ft*lvl\n\n',
              softWrap: true),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'images/shar.jpg',
              height: 250,
              width: 200,
              scale: .5,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
              'Sharingan\n\n'
                  'These eyes see the darkness clearly. Thanks to your heritage, you are able to use the Sharingans'
                  ' powers to see through magic and non-magic darkness and youre always alert:\n\n'
                  'You gain a +5 bonus to initiative.\n\n'
                  'You cant be surprised while you are conscious.\n\n'
                  'Other creatures don’t gain advantage on attack rolls against you as a result of being unseen by'
                  'you.\n\n'
                  'Increase your Dexterity or Constitution score by 1, to a maximum of 20.\n\n'
                  'You are able to use Darkvision as a lvl 1 Spell slot.\n\n'
                  'Your unarmed strike uses a d10 for damage.\n\n',
              softWrap: true),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'images/mank.gif',
              fit: BoxFit.cover,
            ),
          ),
          const Text(
              'Mangekyo Sharingan\n\n'
                  'Prerequisite: Life experience (lvl 11) or party member die dies\n\n'
                  'It is initially awakened by the trauma suffered from witnessing the death of someone close to the'
                  ' user. Once you obtain the Mangekyō Sharingan your teleportation range is increased to 120ft,'
                  ' each use of a Mangekyō Sharingan teleportation will subtract 5ft from your total vision, until'
                  ' blinded. If Blinded in this way the only way to reverse it is to transplant from another or an act of'
                  ' a deity. Additionally, you will not be able to teleport with the Rinnegan, once obtained.\n\n'
                  'A Mangekyō Sharingan is distinguished from a normal Sharingan by its appearance, which'
                  ' changes the form of the tomoe seal. While the exact design differs for each user, though all'
                  'resemble pinwheels.\n\n'
                  'This feat grants +1 to Investigation and Perception.\n\n'
                  'You may cast Charm person at its base level twice and you gain either dominant person or'
                  ' dominant beast to cast twice at 5 level, you regain uses of this after you complete a long rest.\n\n',
              softWrap: true),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'images/rinnegan.gif',
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'Rinnegan\n\n'
                'Prerequisite: (lvl 17) or is granted by the DM sooner\n\n'
                'After obtaining the Mangekyō Sharingan you can gain the Rinnegan as a gift from a deity.'
                ' Once you obtain the Rinnegan your now have blind sight at range is increased to 60ft and true'
                'sight at 30ft. You can teleport up to the remaining feet from previous eyes with no cost other'
                'than a BA or Reaction.\n\n'
                'A Rinnegan is distinguished from a normal eye by its appearance. The eye is purple with several'
                'rings on it.\n\n'
                'This feat grants +1 to Investigation and Perception.\n\n'
                'You may cast Meteor Swarm and Reverse gravity at its base level twice, you regain uses of this'
                'after you complete a long rest. Additionally, you learn to cast you learn planetary devastation at 9th'
                ' level.\n\n\n',
            softWrap: true,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'images/pain-planetary-devastation.gif',
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'PLANETARY DEVASTATION\n\n'
                '9th level evocation\n'
                '• Casting Time: 1 action\n'
                '• Range: 1 mile\n'
                '• Target: One point you can see within range\n'
                '• Components: V S\n'
                '• Duration: Instantaneous\n'
                '• Classes: Sorcerer, Wizard\n\n'
                '• A blazing orb of fiery rock plummets to the ground any point you can see within range.'
                'Each creature in a 80-foot-radius sphere centered on each point you choose must make a'
                'Dexterity saving throw. The sphere spreads around corners. A creature takes 30d6 fire'
                'damage and 30d6 bludgeoning damage on a failed save, or half as much damage on a'
                'successful one. The spell damages objects in the area and ignites flammable objects that'
                'arent being worn or carried.\n\n',
            softWrap: true,
          ),
        ]));
  }
}
