import 'package:flutter/material.dart';
//saiyan page
class saiyan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Saiyan')),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset(
              'images/saiyan-cover.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Text(
              'Saiyan are front line fighters and exist for one reason, fighting. They have no need for weapons'
                  ' or spells and are primarily used for their dex/str. By utilizing ki they are able to obtain temporary'
                  ' power boosts and are able to use unique techniques.\n\n'
                  'Ki points: Monk progression with double ki points and limited abilities\n\n'
                  'Proficiencies: Only proficient in martial arts no weapons or "spells"\n\n'
                  'Ability score increase Your Strength, Dexterity, and Constitution scores all increase by 1\n\n'
                  'Ability score decrease Your Intelligence decreases by 2\n\n'
                  'Powerfully built When carrying, pushing, or dragging an object or creature you count one size'
                  ' larger. Additionally, takes no damage when hit into structure or ground.\n\n'
                  'Languages You know common and one extra language of your choice\n\n'
                  'Names A saiyan name is a pun on a vegatable\n\n'
                  'Ape tail You are considered proficient with your unarmed strikes. When you make an unarmed'
                  ' strike, you use your tail instead of your fists (assuming you still have one), dealing 1d4+DEX'
                  ' modifier Damage. This tail can carry up to 30 pounds and has 10 HP and your armor class. When'
                  ' your tails health is reduced to 0, it falls off. When your tail falls off the first time it regrows in'
                  ' 1d4 days, the second time it regrows in 1d4 weeks, he third time it regrows in 1d4 months, the'
                  ' fourth time it does not regrow at all.\n\n'
                  'Zenkai When reduced to 0 hp, you are revived with 1 hp and increase your maximum health by'
                  ' one after a long rest.\n\n'
                  'Natural armor Your AC equals 11+DEX modifier+CON modifier\n\n'
                  'Speed You have a base walking speed of 30 ft and a base flying speed of 35 ft\n\n'
                  'Emotional ties: If a party member is knocked unconscious you go into a emotional rage. You'
                  ' can only attack the creature that last attacked your party member, you gain +1 to both attack and'
                  ' damage rolls, but you lose bonus actions and may only attack.\n\n\n'
                  'Transformations:\n\n'),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset(
              'images/greatape.gif',
              // width: 600,
              // height: 240,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
              'Great ape Assuming you still have your tail, when you see the full moon or an enormous'
                  ' amount of energy is released you WILL turn into a great ape. This form is controlled by the DM'
                  ' unless you make a Wisdom check with a DC of your Strength score, on a failed check your'
                  ' alignment turns chaotic evil and your character is controlled by the DM, on a successful check'
                  ' you control this form. When in great ape your size is gargantuan, you have a +2 to attack rolls,'
                  ' you can only make unarmed strikes, you dont lose any items, you gain 10 temporary HP, and'
                  ' unarmed strikes deal 1d12+STR modifier damage.\n\n'
                  'Breath blast You fire a 120 ft line ki blast form your mouth that deals 1d10 force damage'
                  ' per level(max level 15). Any creature hit by this blast must make a DC 8+proficiency'
                  ' bonus+STR modifier Dexterity save, on a failed save takes whatever damage you have at that'
                  ' time, or half that on a successful save.\n\n'
                  'Superior grip as an action you can make a grab attack and grapple whoever you hit, and'
                  ' as a bonus action you can do a crush attack dealing 3d4 bludgeoning damage per level(max level'
                  ' 15). Breaking free of the grab attack requires successful DC 15 Strength (athletics) check \n\n'
                  'NOTE: When you are 10th level, roll a d20 when you go great ape. if you roll a 20, if you roll a 20, you'
                  ' become golden ape and automatically have control over your form. Your great ape abilities do'
                  ' not change, but you do turn into a super Saiyan 4 after 10 minutes. PPS: If you have gone ss4 in'
                  ' the past week you cant go golden ape\n\n'),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset(
              'images/laioken.jpg',
              // width: 600,
              // height: 240,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'Kaioken\n\n'
                'Beginning at 2nd level, you may use your bonus action to use the Kaioken technique.'
                'This does not cost a ki point to use\n\n'
                'While using Kaioken, you gain the following benefits:\n'
                '• +1 to damage rolls\n'
                '• +5ft to walking and flying\n'
                '• +1 to attack rolls\n'
                'Every round you use Kaioken, your maximum hit points is reduced by 1 at the end of every turn'
                'you use Kaioken.\n'
                'If this would cause you to take go below 0 hp, you are rendered unconscious at 0 hp.\n'
                'Any reduction to your hit point maximum caused by this feature is restored over a long rest.\n'
                'Can stack with any SSJ form but not ultra-instinct\n\n\n'
                'Super Saiyan Forms\n\n'
                'Beginning at 3rd level you are able to tap into the power of a Super Saiyan. In order to enter a'
                'Super Saiyan form, you must use your bonus action to transform. At higher levels when you'
                ' have more forms, you may use your bonus action to ascend a form, spending its ki point cost.'
                ' You may also, when in a Super Saiyan form, spend ki to make the form last longer. For each'
                ' time limit you try to keep up the form past its time limit, you lose an amount of ki equal to its ki'
                ' cost at the end of the turn.\n\n',
            softWrap: true,
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset(
              'images/ssj1.jpg',
              // width: 600,
              // height: 240,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
              'Super Saiyan\n At 3th level you can transform into this form 3 times per day as a bonus action'
                  ' and must spend 1 ki point. You stay in this form until you dismiss it as an action or you fall'
                  ' below half health. This form grants:\n • +5 to walking speed\n • +10 to flying speed\n • +1 to attack rolls\n'
                  '• +2 to damage rolls\n You cant activate this form again until first finishing a long rest.'),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset(
              'images/ssj2.jpg',
              // width: 600,
              // height: 240,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
              'Super Saiyan 2\n At 6th level you can transform into this form 2 times per day as a bonus action'
                  ' and costs 1 ki point. You must used a bonus action in ssj1 before this form is used.(excluding'
                  ' transformation skip) This form lasts 2 hours, until you dismiss it as an action, or fall below half'
                  ' health. This form grants:\n • +10 to walking speed\n • +15 to flying speed\n • +2 to attack rolls\n • +2 to'
                  ' damage rolls\n • once per turn when you use your action to attack with an unarmed strike, you may make'
                  ' an additional unarmed strike as an attack.\n You cant activate this form again until first finishing a long rest\n\n'),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset(
              'images/ssj3.jpg',
              // width: 600,
              // height: 240,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
              'Super Saiyan 3\n At 8th level you can transform 1 time per day as a bonus action and costs 1 ki'
                  ' point. You must used a bonus action in ssj2 before this form is used. (excluding transformation'
                  ' skip) This form lasts 1 hour, until you dismiss it as an action, or fall below half health. This'
                  ' form grants:\n • +15 to walking speed\n • +20 to flying speed\n • +2 to attack rolls\n • +3 to damage rolls\n'
                  '• Resistance to non magical slashing, piercing, and bludgeoning damage\n'
                  '• Once per turn when you use your action to attack with an unarmed strike, you may make'
                  'another unarmed strike as an attack.\n You cant activate this form until first finishing a '
                  'long rest\n\n'),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset(
              'images/ssj4.jpg',
              // width: 600,
              // height: 240,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
              'Super Saiyan 4\n At 10th level you transform once per week as an bonus action and costs 1 ki'
                  ' point. You must used a bonus action in ssj3 before this form is used. (excluding transformation'
                  ' skip) This form lasts 1 hour and grants:\n • +20 to walking speed\n • +25 to flying speed\n • +3 to'
                  ' attack rolls\n • +3 to damage rolls\n • Resistance to non magical slashing, piercing, and bludgeoning damage\n'
                  '• Once per turn when you use your action to attack with an unarmed strike, you may make'
                  'another unarmed strike as an attack.\n You can only activate this form again after finishing 7 long rests.\n\n'),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset(
              'images/ssjg.jpg',
              // width: 600,
              // height: 240,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
              'Super Saiyan God\n At 15th level you transform once in your life as an action. This form lasts 30'
                  ' minutes. Your hair returns to its normal shape, but is tinged with red, and all muscle growth is reversed.'
                  ' your aura becomes a chaotic and firey red or orange, and you seem to emenate a power not of this'
                  ' world.\n This form grants:\n • +30 to walking speed\n • +30 to flying speed\n • +3 to attack rolls\n • +3 to'
                  ' damage rolls.\n • Your ki is undetectable by mortals without divine sense.\n'
                  '• In this form you gain divine sense, which allows you to sense a god ki.\n'
                  '• Once per turn when you use your action to attack with an unarmed strike, you may make'
                  ' 2 more unarmed strike as an attack.\n'
                  '• You can take the disengage, dodge or dash actions as a bonus action on your turn\n'
                  '(*Note: You can never activate this form again, even if you died and then got revived.)\n'),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset(
              'images/ssjgss.jpg',
              // width: 600,
              // height: 240,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
              'Super Saiyan God Super Saiyan (Super Saiyan Blue)\n At 19th level you can transform once per'
                  ' day as an bonus action and costs 1 ki point. You must used a bonus action in ssj3 before this'
                  ' form is used (or use transformation skip). This form lasts until you dismiss it as an action or'
                  ' you drop below half health. This form grants:\n • +35 to walking speed\n • +35 to flying speed\n • +4 to'
                  ' attack rolls\n • +5 to damage rolls\n • Your ki is undetectable by mortals without'
                  ' divine sense\n • You gain divine sense, which allows you to sense a god ki\n'
                  '• Once per turn when you use your action to attack with an unarmed strike, you may make'
                  ' 2 more unarmed strike as an attack.\n'
                  '• Resistance to non magical slashing, piercing, and bludgeoning damage\n\n'),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset(
              'images/ui.jpg',
              // width: 600,
              // height: 240,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
              'Ultra Instinct\n At 20th level, if you devote 1 year to doing nothing but training this technique,'
                  ' you gain this form. You can transform once per 7 days as an action only when you fall to 0 or'
                  ' less hp. From there this form lasts for 30 minutes, until you dismiss it as an action, or you fall to'
                  ' 0 hp. This form grants:\n'
                  '• +2 to AC\n'
                  '• +5 to damage and attack rolls\n'
                  '• +40ft speed walk and fly\n'
                  '• You get resurrected at your fullest potential(full hp and stacking all your previous forms'
                  ' without kaioken)\n'
                  '• When you are subjected to a dexterity saving throw to take half damage, you instead take'
                  ' half damage on a failed save and no damage on a sucessful one.\n'
                  '• You are immune to non magical piercing, slashing, and bludgeoning damage\n'
                  '• Once per turn when you use your action to attack with an unarmed strike, you may make'
                  ' 2 more unarmed strike as an attack\n'
                  '• Godly ki: when you spend any number of ki points on one of your techniques, treat every'
                  ' 1 ki point spent as 2 for the purpose of determining damage.\n\n\n'
                  'Ki Techniques'),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset(
              'images/kiblast.jpg',
              // width: 600,
              // height: 240,
              fit: BoxFit.cover,
            ),
          ),
          const Text('Ki blast lvl 1\n'
              'You may spend up to 4 ki and shoot that many balls of energy out of your palms as an action.'
              'Make a ranged attack roll using your constitution modifier. On a hit, each ki blast deals 1d4'
              ' radiant damage and has a range of 60ft. You may choose a different target for each ki blast.'),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset(
              'images/kamehameha.jpg',
              // width: 600,
              // height: 240,
              fit: BoxFit.cover,
            ),
          ),
          const Text('Kamehameha lvl 3\n'
              'You may spend 3 + 1 per lvl of transformation ki and fire a Kamehameha as an action. Creatures'
              ' in a 120ft line must make a dexterity saving throw or take a number of d8s damage equal to the'
              ' amount of ki spent, or half as much damage on a successful save.'),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset(
              'images/instant.jpeg',
              // width: 600,
              // height: 240,
              fit: BoxFit.cover,
            ),
          ),
          const Text('Instant Transmission lvl 5\n'
              'As an action, you may spend 5 ki to teleport you and up to eight willing creatures of your choice'
              ' that you can see within range, or a single object that you can see within range, to any place you'
              ' have been to before or can see as long as its on the same plane of existence as you. You can use'
              ' this technique once per long rest.'),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset(
              'images/spiritbomb.gif',
              // width: 600,
              // height: 240,
              fit: BoxFit.cover,
            ),
          ),
          const Text('Spirit Bomb lvl 7\n'
              'You must use your action and bonus action along with all remaining ki >5 to generate a massive'
              ' weapon called a spirit bomb. For 1 round per 5 ki this ball hangs above your head and you are'
              ' considered incapacitated, but able to speak for the round. On your next turn, you may throw the'
              ' ball up to 100ft. Each creature within 40 feet of the point of impact must make a dexterity saving'
              ' throw or take 1d10 of radiant damage for each ki point spent on a failed save, and half as much'
              ' on a successful save.\n'
              'Your allies can help you with this attack. As a bonus action on their turns, they may roll a d4.'
              ' Then, they add a number of ki points to your spirit bomb equal to their roll. This increases the'
              ' damage by 1d10 for each ki point added.\n'
              'When thrown you return to base form and have 0 ki and collapse from exhaustion. Once a long'
              ' rest is completed your max ki is *1/2 and you cannot transform. Once long rested again and after'
              ' 10 rations you return to normal'),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset(
              'images/dragonfist.jpg',
              // width: 600,
              // height: 240,
              fit: BoxFit.cover,
            ),
          ),
          const Text('Dragon Fist lvl 8\n'
              'As an action on your turn, you may spend up to 3 ki points and make a ranged attack roll to, on a'
              ' hit, deal 1d8 of fire damage for each ki point spent to a single target within 100 feet. Once per'
              ' long rest'),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset(
              'images/hakai.gif',
              // width: 600,
              // height: 240,
              fit: BoxFit.cover,
            ),
          ),
          const Text('Hakai lvl 15\n'
              'Only while in a divine form(ssg, ssgss, ui), You may use your action and remaining ki points to'
              ' send a destructive wave of energy at a creature within 60ft of you. If the creature has 100 hit'
              ' points or less, that creature must make a constitution saving throw or be utterly destroyed. Its'
              ' body is turned to dust, along with all of its gear except magic items, and it cannot be regenerated.'
              ' You can use this technique once per long rest.\n\n\n'
              'Monk Abilities:\n\n'
              'Deflect Missiles\n'
              'Starting at 3rd Level, you can use your Reaction to deflect or catch the missile when you are hit'
              ' by a ranged weapon Attack.\n When you do so, the damage you take from the Attack is reduced by'
              ' 1d 10 + your Dexterity modifier + your monk level.\n'
              'If you reduce the damage to 0, you can catch the missile if it is small enough for you to hold in'
              ' one hand and you have at least one hand free. If you catch a missile in this way, you can spend 1'
              ' ki point to make a ranged Attack (range 20 feet/60 feet) with the weapon or piece'
              ' of Ammunition you just caught, as part of the same Reaction.\n You make this Attack with'
              ' proficiency, regardless of your weapon Proficiencies, and the missile counts as a monk weapon'
              ' for the Attack.\n\n'
              'Extra Attack\n'
              'Beginning at 5th Level, you can Attack twice, instead of once, whenever you take'
              ' the Attack action on Your Turn.\n\n'
              'Ki-Empowered Strikes\n'
              'Starting at 6th Level, your unarmed strikes count as magical for the Purpose of'
              ' overcoming Resistance and immunity to nonmagical attacks and damage.\n\n'
              'Stillness of Mind\n'
              'Starting at 7th level, you can use your action to end one Effect on yourself that is causing you to'
              ' be Charmed or Frightened.\n\n'
              'Evasion\n'
              'At 7th level, your instinctive agility lets you dodge out of the way of certain area Effects, such as'
              ' a blue dragons lightning breath or a Fireball spell. When you are subjected to an Effect that'
              ' allows you to make a Dexterity saving throw to take only half damage, you instead take no'
              ' damage if you succeed on the saving throw, and only half damage if you fail.\n\n'
              'Purity of Body\n'
              'At 10th level, your mastery of the ki flowing through you makes you immune to disease and'
              ' poison.\n\n'
              'Tongue of the Sun and Moon\n'
              'Starting at 13th level, you learn to touch the ki of other minds so that you understand all'
              ' spoken Languages. Moreover, any creature that can understand a language can understand what'
              ' you say.\n\n'),
        ],
      ),
    );
  }
}