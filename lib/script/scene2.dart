import './script.dart';
import './jade.dart';

const honestLakeScript = [
  ScriptItem(
      script: 'My sister didn`t push me into the lake, I fell in accidentally!',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.cryhappy),
      ]),
  ScriptItem(
      script:
          'Despite the dislike you feel for the Empress deep inside, you gently tugged at the Emperor`s sleeve, looking at him with tears in your eyes.'),
  ScriptItem(script: 'The emperor looked at you, unbelievably.'),
  ScriptItem(
      script:
          'Jessie...You don`t have to do this...your maid already told me everything...',
      speaker: CharacterName.theEmperor,
      characterChanges: [
        CharacterChart(name: CharacterName.theEmperor, emotion: Emotion.cry),
      ]),
  ScriptItem(
      script:
          'I...I...This is all a misunderstanding your majesty! My maid was trying to protect me!',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.tears),
      ]),
  ScriptItem(
      script: 'The Emperor looked at you, his gaze slowly turning cold.'),
  ScriptItem(
      script: 'Everytime...I trusted you...and you`ve been lying to me...',
      speaker: CharacterName.theEmperor,
      characterChanges: [
        CharacterChart(
            name: CharacterName.theEmperor, emotion: Emotion.angrytalk),
      ]),
  ScriptItem(
      script: 'Your majesty, I can explain...',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.cryhappy),
      ]),
  ScriptItem(
      script: 'There`s no need to explain.', speaker: CharacterName.theEmperor),
  ScriptItem(
      script:
          'The Emperor helped the Empress, looking wronged, and left—without even casting a single glance at you.',
      characterChanges: [
        CharacterChart(name: CharacterName.theEmperor, emotion: Emotion.dark),
        CharacterChart(name: CharacterName.theEmpress, emotion: Emotion.dark),
      ]),
  ScriptItem(
      script:
          'Great. You can`t even finish a simple task...This is what I have to deal with.',
      speaker: CharacterName.system),
  ScriptItem(
      script: 'Who is the Empress?',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(
      script:
          'It`s the Empress, from the novel you were reading. She`s also your half-sister.',
      speaker: CharacterName.system),
  ScriptItem(
      script: 'Why do I feel disgusted when I look at her? Who is she, really?',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(
      script: 'I don`t know what you are talking about.',
      speaker: CharacterName.system),
  ScriptItem(script: 'Who are you, system?', speaker: CharacterName.jas),
  ScriptItem(
      script: 'I am the system, your guide in this novel.',
      speaker: CharacterName.system),
  ScriptItem(script: '...'),
  ScriptItem(script: '...'),
  ScriptItem(
      script:
          'Okay… I didn`t expect this at first. You`re so difficult. Let`s just start over—I hope this is the last time.',
      speaker: CharacterName.system,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.dark),
      ]),
];

const obeyLakeScript = [
  ScriptItem(
      script: 'Your majesty, my belly hurts so much! Our baby is gone...',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.tears),
      ]),
  ScriptItem(
      script:
          'Your sad voice pulls the Emperor`s attention back to you, and he softly holds your hand with tenderness.',
      characterChanges: [
        CharacterChart(name: CharacterName.theEmperor, emotion: Emotion.tears),
      ]),
  ScriptItem(
      script:
          'My dear, I should have protected you and our child... this b*tch.',
      speaker: CharacterName.theEmperor,
      characterChanges: [
        CharacterChart(
            name: CharacterName.theEmperor, emotion: Emotion.angrytalk),
      ]),
  ScriptItem(
      script:
          'The Empress trembled involuntarily when she heard the Emperor call her a b*tch. Her gaze drifted blankly to your tightly clasped hands, the tears long dried on her face.',
      characterChanges: [
        CharacterChart(name: CharacterName.theEmpress, emotion: Emotion.tears),
      ]),
  ScriptItem(
      script:
          'Seeing the Empress so despairing, you couldn`t help but feel a strange sense of satisfaction.',
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.dark),
      ]),
  ScriptItem(
      script: 'This needs to come to an end! Guards, take her...',
      speaker: CharacterName.theEmperor,
      characterChanges: [
        CharacterChart(
            name: CharacterName.theEmperor, emotion: Emotion.angrytalk),
      ]),
  ScriptItem(script: 'Wait a second!', speaker: CharacterName.unknown),
  ScriptItem(
      script:
          'A boy walked in, dressed in the imperial yellow. He looked about 5 or 6 years old and appeared quite angry.'),
  ScriptItem(
      script: 'Oh...I forgot this boy...', speaker: CharacterName.system),
  ScriptItem(script: 'The child gave a proper bow to the Emperor.'),
  ScriptItem(
      script:
          'Uncle, I was there when empress and concubine on bridge, I clearly see...',
      speaker: CharacterName.nephew),
  ScriptItem(
      script:
          'Before he could finish his sentence, the young Marquis suddenly collapsed!'),
  ScriptItem(
      script: '!!!!!Doctor!!! where is the doctor!!!',
      speaker: CharacterName.theEmperor,
      characterChanges: [
        CharacterChart(
            name: CharacterName.theEmperor, emotion: Emotion.angrytalk),
      ]),
  ScriptItem(
      script:
          'The scene immediately turned chaotic. The Emperor rushed off with the child in his arms, followed by the Empress. Before leaving, he glanced at you, his eyes filled with confusion and distrust.',
      characterChanges: [
        CharacterChart(name: CharacterName.theEmperor, emotion: Emotion.dark),
        CharacterChart(name: CharacterName.theEmpress, emotion: Emotion.dark),
        CharacterChart(name: CharacterName.jas, emotion: Emotion.dark),
      ]),
  ScriptItem(
      script: 'System! Did you do something to the kid?',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(
      script:
          'Well, someone has to do something, or the truth will come out...',
      speaker: CharacterName.system),
  ScriptItem(
      script: 'What did you do to him? He`s just a child!',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(
      script: 'I did what I have to do. Only dead man won`t talk.',
      speaker: CharacterName.system),
  ScriptItem(
      script:
          'The system`s voice sounded almost trivial, yet you felt a chill running from your toes to your head. Did you make the right choice?'),
  ScriptItem(
      script:
          'It`s ok Jas, he`s just a character in a novel. You don`t need to feel sorry.',
      speaker: CharacterName.system),
  ScriptItem(
      script:
          'You didn`t say anything, but thinks about the last glaze the Emperor gave you, he is so smart and definitely smells something fishy.'),
  ScriptItem(
      script:
          'Why can`t I just tell the truth? Won`t they just be together happily ever after?',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(
      script: 'You simply can`t do that.', speaker: CharacterName.system),
  ScriptItem(
      script: 'The system`s voice sounded cold, like it was wrapped in frost.'),
  ScriptItem(
      script:
          'The mission is simple, I tell you what to do, and you follow me. You did great this time, look at the progress bar, we are 1/3 done.',
      speaker: CharacterName.system),
  ScriptItem(script: '...', characterChanges: [
    CharacterChart(name: CharacterName.jas, emotion: Emotion.dark),
  ]),
  ScriptItem(script: 'The young Marquis was announced dead later of the day.'),
  ScriptItem(
      script:
          'Since that day, the Emperor has not visited you for nearly a month, and you have heard rumors of the Emperor and the Empress spending time together.'),
  ...jadeScript,
];
