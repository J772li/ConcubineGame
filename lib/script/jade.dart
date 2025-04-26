import './script.dart';
import './fire.dart';

const jadeScript = [
  ScriptItem(script: 'Many days have passed.'),
  ScriptItem(
      script:
          'And for some reason, the system is now quiet. Maybe you did what it wanted, and there`s no next plot point—for now. At last, you can finally catch your breath.'),
  ScriptItem(
      script:
          'You really need to get back, but there were no sign of the system, until...'),
  ScriptItem(
      script: 'Jas, it`s time to work now.', speaker: CharacterName.system),
  ScriptItem(
      script: '...What`s up with you?',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.talk),
      ]),
  ScriptItem(
      script:
          'The emperor is about to confess his feelings to the empress, and you`re still slacking off!',
      speaker: CharacterName.system),
  ScriptItem(
      script:
          'Their love can`t develop so smoothly—there must be misunderstandings, betrayal, and finally, reconciliation for it to be complete!',
      speaker: CharacterName.system),
  ScriptItem(
      script: 'He sounds fanatical, as if he`s chasing some grand purpose.'),
  ScriptItem(
      script: '...Seriously, what is wrong with you?',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(
      script: 'Oh, don`t worry about it. I`m just a little excited.',
      speaker: CharacterName.system),
  ScriptItem(
      script:
          'So, your next mission is to break the Emperor`s confession, use the jade pendant he gave you—remind him of the affection he once had for you.',
      speaker: CharacterName.system),
  ScriptItem(
      script:
          'When he remembers everything you`ve done for him, he`ll be filled with regret—and he`ll shove the empress away!',
      speaker: CharacterName.system),
  ScriptItem(
      script: 'Do I have to do this?',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.cryhappy),
      ]),
  ScriptItem(
      script:
          'I told you already Jas. Just finish the mission. Don`t you want to go back to your home spaceship? Don`t you miss your friend?',
      speaker: CharacterName.system),
  ScriptItem(
      script: '...Wait, how do you know everything about me?',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(
      script:
          'It doesn`t matter. I`m the system and I knows everything in all universe.',
      speaker: CharacterName.system),
  ScriptItem(
      script:
          'Enough talking, let`s get back to work. I put the pandent on the Emperor`s desk, and left a note inviting him to meet you in the back garden.',
      speaker: CharacterName.system),
  ScriptItem(
      script: '[I need to get this done.]',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(
      script:
          '[It`s time to go back to work. The real work, not play a jealousy concubine.]',
      speaker: CharacterName.jas),
  ScriptItem(
      script:
          'Jas is the prime engineer on SOLACE - Solar Orbital Localization and Core Extraction.',
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.dark),
      ]),
  ScriptItem(
      script:
          'This mission is dedicated to extracting Solvium, a rare and potent resource found across the solar system.'),
  ScriptItem(
      script:
          'As the core material used in crafting Solarmantles—advanced energy weapons capable of reshaping the battlefield—Solvium has become humanity`s most critical asset.'),
  ScriptItem(
      script:
          'With Space War III on the brink, control over Solvium means control over the future.'),
  ScriptItem(
      script:
          'Jas and Andrew has hunting for this material for couple of months now, it is almost to the deadline.'),
  ScriptItem(
      script:
          'And Andrew doesn`t know—in the final 48 hours before Jas passed out, she had finally discovered the prime location of the Solvium.'),
  ScriptItem(
      script:
          '[I really need to get back and report the location of Solvium to Andrew. There`s no time, my people are waiting for me.]',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(
      script:
          'Thinking of all this, Jas is pulled back to the present - the back garden of the palace in ancient China.'),
  ScriptItem(
      script:
          'Through the screen and willows, the opulent back garden is adorned with intricately carved beams and rare treasures.'),
  ScriptItem(
      script:
          'Dozens of colors of peonies are in full bloom, and in the distance, the young emperor waits for her.'),
  ScriptItem(
      script:
          'His furrowed brows cannot hide the irresistible handsomeness that commands attention.'),
  ScriptItem(
      script: 'Jassie!',
      speaker: CharacterName.theEmperor,
      characterChanges: [
        CharacterChart(name: CharacterName.theEmperor, emotion: Emotion.cry),
      ]),
  ScriptItem(
      script:
          'When the emperor sees you, his troubled expression fades, and his handsome smile brightens the moment.'),
  ScriptItem(
      script: 'Your majesty, there`s something I need to tell you.',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.talk),
      ]),
  ScriptItem(
      script: 'You don`t need to say anything--',
      speaker: CharacterName.theEmperor),
  ScriptItem(script: 'He gently places his hand over your lips,'),
  ScriptItem(
      script:
          'Sorry, my love. I was lured by the wicked woman. I don`t know what`s happening to me. She seems to have some kind of magic, and I can`t control myself.',
      speaker: CharacterName.theEmperor,
      characterChanges: [
        CharacterChart(name: CharacterName.theEmperor, emotion: Emotion.tears),
      ]),
  ScriptItem(
      script:
          'This is going well! Jas, just say something to make the emperor despise the empress more!',
      speaker: CharacterName.system),
  ScriptItem(script: 'I...', speaker: CharacterName.jas, characterChanges: [
    CharacterChart(name: CharacterName.jas, emotion: Emotion.cryhappy),
  ]),
];

const jadeHonestScript = [
  ScriptItem(
      script:
          'Your majesty, sorry I lied to you. I didn`t save you in the cave. It was... it was the Empress. And this pendant belongs to her.',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.tears),
      ]),
  ScriptItem(
      script:
          '...Why are you saying this? Did the Empress force you to do this?',
      speaker: CharacterName.theEmperor,
      characterChanges: [
        CharacterChart(
            name: CharacterName.theEmperor, emotion: Emotion.angrytalk),
      ]),
  ScriptItem(
      script:
          'No! Your majesty, I just want to confess. It was the Empress from the beginning, you fall in love with her, it was her all along.',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.talk),
      ]),
  ScriptItem(
      script:
          'The emperor`s expression froze. The system went silent. The entire world stood still for a few minutes.'),
  ScriptItem(
      script: '...Why are you telling me now?',
      speaker: CharacterName.theEmperor,
      characterChanges: [
        CharacterChart(name: CharacterName.theEmperor, emotion: Emotion.tears),
      ]),
  ScriptItem(script: 'The emperor asked desparately.'),
  ScriptItem(
      script:
          'Your majesty, I`m sincerely sorry. But I think you also noticed that the Empress is your true love...I can`t hold it anymore.',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.tears),
      ]),
  ScriptItem(
      script:
          'So...I loved the wrong person all this time...And I tortured her, pushed her away...',
      speaker: CharacterName.theEmperor,
      characterChanges: [
        CharacterChart(name: CharacterName.theEmperor, emotion: Emotion.tears),
      ]),
  ScriptItem(
      script: 'And you, you are behind all of this.',
      speaker: CharacterName.theEmperor,
      characterChanges: [
        CharacterChart(
            name: CharacterName.theEmperor, emotion: Emotion.angrytalk),
      ]),
  ScriptItem(
      script:
          'He said it with absolute certainty, as if sealing my fate once and for all.'),
  ScriptItem(
      script: '[Ops, this is not good...Did I make the right choice?]',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.tears),
      ]),
  ScriptItem(
      script: 'Guards! Guards! Take this vicious woman away!',
      speaker: CharacterName.theEmperor,
      characterChanges: [
        CharacterChart(
            name: CharacterName.theEmperor, emotion: Emotion.angrytalk),
      ]),
  ScriptItem(
      script:
          'Two strong soldiers dragged you to the Cold Palace, then they beat you half to death.',
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.dark),
        CharacterChart(name: CharacterName.theEmperor, emotion: Emotion.dark),
      ]),
  ScriptItem(
      script: 'Why, why did you do this Jas? I just want you to be alive...',
      speaker: CharacterName.system),
  ScriptItem(
      script: 'This time, you really made me angry... This is great.',
      speaker: CharacterName.system),
  ScriptItem(
      script: 'It`s alright, we still have one last chance.',
      speaker: CharacterName.system),
  ScriptItem(
      script:
          'Don`t you want to know why you hate the empress? Don`t you want to know why you`re here?',
      speaker: CharacterName.system),
  ScriptItem(script: '...', speaker: CharacterName.jas),
  ScriptItem(script: 'The system tries to persuade me,'),
  ScriptItem(
      script:
          'Tomorrow is the last day. All you have to do is set fire to the empress`s palace, and I will send you home, revealing the truth to you.',
      speaker: CharacterName.system),
  ScriptItem(
      script: 'Think it over carefully today!', speaker: CharacterName.system),
  ScriptItem(script: '...', speaker: CharacterName.jas),
  ...fireScript,
];

const jadeObeyScript = [
  ScriptItem(
      script:
          'You seem moved by the emperor`s words, your eyes redden with emotion as you tightly grasp his hand.'),
  ScriptItem(
      script:
          'Your Majesty… even a day without you feels like a lifetime. I`m truly grateful you still think of me. Of course, as the emperor, your affections should be shared. My sister`s admiration runs deep—I would never dare be jealous.',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.talk),
      ]),
  ScriptItem(
      script:
          'Though you insist you`re not jealous, the glimmer of tears tells another story. The emperor notices—and his heart aches even more.',
      speaker: CharacterName.theEmperor,
      characterChanges: [
        CharacterChart(name: CharacterName.theEmperor, emotion: Emotion.cry),
      ]),
  ScriptItem(
      script: 'Jassie my love...Oh I`m so sorry...I`m so sorry...',
      speaker: CharacterName.theEmperor,
      characterChanges: [
        CharacterChart(name: CharacterName.theEmperor, emotion: Emotion.tears),
      ]),
  ScriptItem(
      script:
          'He hugs you tightly with his strong arms, his body trembling with sobs,'),
  ScriptItem(
      script: 'I will never let you go again, I promise.',
      speaker: CharacterName.theEmperor),
  ScriptItem(
      script: 'You hugged him back, but there are no tears in your eyes.'),
  ScriptItem(
      script:
          'You spot the empress hiding in a distant pavilion, quietly watching you two lovers.',
      characterChanges: [
        CharacterChart(name: CharacterName.theEmpress, emotion: Emotion.tears),
      ]),
  ScriptItem(script: 'She seems heartbroken, which satisfies you again.'),
  ScriptItem(
      script: '[...Happy?]',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
        CharacterChart(name: CharacterName.theEmperor, emotion: Emotion.dark),
        CharacterChart(name: CharacterName.theEmpress, emotion: Emotion.dark),
      ]),
  ScriptItem(
      script:
          'Thanks Jassie, I couldn`t be more happy! I thought you are also happy when seeing her suffer, after all the suffering she gave you.',
      speaker: CharacterName.system),
  ScriptItem(
      script:
          '[How did you...Who is she? Never mind, just one more task right? I need to go home soon as I can.]',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(
      script: 'Haha you still remember that!', speaker: CharacterName.system),
  ScriptItem(script: 'The systems sounds delighted.'),
];

const jadeObeyContinueScript = [
  ...jadeObeyScript,
  ScriptItem(
      script:
          'You are absolutely right! Just one more task, you can go back to your sweet sweet home.',
      speaker: CharacterName.system),
  ScriptItem(
      script: 'Can you tell me what is going on with the emperor?',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.talk),
      ]),
  ScriptItem(
      script:
          'Well...Since you are being a good girl, let me ask you a question.',
      speaker: CharacterName.system),
  ScriptItem(
      script: 'Do you remember anything in your childhood? The snow globe?',
      speaker: CharacterName.system),
  ScriptItem(script: '...', speaker: CharacterName.jas, characterChanges: [
    CharacterChart(name: CharacterName.jas, emotion: Emotion.dark),
  ]),
  ScriptItem(script: 'There`s nothing I could remember.'),
  ScriptItem(
      script:
          'The nurse told me that when they found me, I was covered in wounds, and no one knows what happened to me.'),
  ScriptItem(script: 'Perhaps out of self-preservation, I remember nothing.'),
  ScriptItem(
      script: 'But my country saved me, raised me, and gave me this job.'),
  ScriptItem(
      script: 'So now, no matter the cost, I must return and serve my nation.'),
  ScriptItem(script: 'The system`s voice breaked your thoughts'),
  ScriptItem(
      script: 'Jas, tomorrow will be the last mission for you.',
      speaker: CharacterName.system),
  ScriptItem(
      script:
          'You will create a massive fire and destroy the empress`s palace. The Emperor will save the empress eventually, and also realize she is the one who saved him.',
      speaker: CharacterName.system),
  ScriptItem(script: 'After that...', speaker: CharacterName.system),
  ScriptItem(
      script: 'After that, I will be executed right?',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.tears),
      ]),
  ScriptItem(
      script:
          'No...Don`t worry about it. As long as you can finish your mission, I will make sure you will be alive.',
      speaker: CharacterName.system),
  ScriptItem(
      script: 'And get back to my spaceship?',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(script: 'Sure, certainly.', speaker: CharacterName.system),
  ScriptItem(script: '...', characterChanges: [
    CharacterChart(name: CharacterName.jas, emotion: Emotion.dark),
  ]),
  ...fireScript,
];

const obeyEndScript = [
  ScriptItem(
      script: 'Your mission is already complete.',
      speaker: CharacterName.system),
  ScriptItem(
    script: 'Without any hesitation, the system asked you the last question,',
  ),
  ScriptItem(
      script: 'Where is the Solvium located?', speaker: CharacterName.system),
  ScriptItem(
      script: 'Sector 7-G, Grid A19.',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.talk),
      ]),
  ScriptItem(
      script:
          'One of a sudden, everything is gone. the emperor, the treasures, the palace...Suddenly there is only you.'),
  ScriptItem(
      script: 'What is happening??? System, tell me what is going on???',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(
      script:
          'Oh Jas, even after knowing you for 20 years, I never realized you could be so naive.',
      speaker: CharacterName.system),
  ScriptItem(
      script: 'Who are you??? Get me out of here!!!! I want to go home!!!!',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(
      script: 'Thank you Jassie, that`s all I need.',
      speaker: CharacterName.system),
  ScriptItem(
      script:
          'Wait! How did you get into my head? Are you controlling me? Who are you working for??',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(
      script: 'Trust me, this is the only way to keep you alive.',
      speaker: CharacterName.system),
  ScriptItem(
      script: 'Sorry Jassie, I will see you after the war ends.',
      speaker: CharacterName.system),
  ScriptItem(script: 'Wait!!!', speaker: CharacterName.jas, characterChanges: [
    CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
  ]),
  ScriptItem(script: 'Now, you can reset.', speaker: CharacterName.system),
  ScriptItem(script: '...', characterChanges: [
    CharacterChart(name: CharacterName.jas, emotion: Emotion.dark),
  ]),
  ScriptItem(script: '...'),
];

const jadeObeyEndScript = [
  ...jadeObeyScript,
  ScriptItem(
      script: 'Your mission is already complete.',
      speaker: CharacterName.system),
  ScriptItem(
    script: 'Without any hesitation, the system asked you the last question,',
  ),
  ScriptItem(
      script: 'Where is the Solvium located?', speaker: CharacterName.system),
  ScriptItem(
      script: 'Sector 7-G, Grid A19.',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.talk),
      ]),
  ScriptItem(
      script:
          'One of a sudden, everything is gone. the emperor, the treasures, the palace...Suddenly there is only you.'),
  ScriptItem(
      script: 'What is happening??? System, tell me what is going on???',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(
      script:
          'Oh Jas, even after knowing you for 20 years, I never realized you could be so naive.',
      speaker: CharacterName.system),
  ScriptItem(
      script: 'Who are you??? Get me out of here!!!! I want to go home!!!!',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(
      script: 'Thank you Jassie, that`s all I need.',
      speaker: CharacterName.system),
  ScriptItem(
      script:
          'Wait! How did you get into my head? Are you controlling me? Who are you working for??',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(
      script: 'Trust me, this is the only way to keep you alive.',
      speaker: CharacterName.system),
  ScriptItem(
      script: 'Sorry Jassie, I will see you after the war ends.',
      speaker: CharacterName.system),
  ScriptItem(script: 'Wait!!!', speaker: CharacterName.jas, characterChanges: [
    CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
  ]),
  ScriptItem(script: 'Now, you can reset.', speaker: CharacterName.system),
  ScriptItem(script: '...', characterChanges: [
    CharacterChart(name: CharacterName.jas, emotion: Emotion.dark),
  ]),
  ScriptItem(script: '...'),
];
