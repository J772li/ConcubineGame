import './script.dart';

const fireScript = [
  ScriptItem(script: 'One day passed really fast.'),
  ScriptItem(
      script:
          'This is your last chance, you couldn`t sleep at night. Do you really want to do as the system said?'),
  ScriptItem(script: 'Thinking about it, you fall asleep...'),
  ScriptItem(script: 'In the dream, the snow globe is broken again...'),
  ScriptItem(
      script: 'You know I only want the best for you, Jas.',
      speaker: CharacterName.system),
  ScriptItem(
      script: '[...Am I still sleeping?]',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.talk),
      ]),
  ScriptItem(script: '...'),
  ScriptItem(script: 'Wake up, Jas!', speaker: CharacterName.system),
  ScriptItem(
      script: 'Uhhh...what is going on?',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.tears),
      ]),
  ScriptItem(
      script:
          'You realized that you are not on your bed, but actually holding a burning torch and standing in the back yard of the Empress`s palace.'),
  ScriptItem(
      script: 'Seriously??? You want me to make the choice now???',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(script: 'Jas,', speaker: CharacterName.system),
  ScriptItem(script: 'The system sounds really weak,'),
  ScriptItem(
      script:
          'I used all my credits...This is your last chance...Just do as I said...',
      speaker: CharacterName.system),
  ScriptItem(script: 'Please, Jas...', speaker: CharacterName.system),
];

const trueEndingScript = [
  ScriptItem(script: 'You chose to not burn the palace.'),
  ScriptItem(
      script: 'After all of this, why you can`t just obey me...',
      speaker: CharacterName.system),
  ScriptItem(
      script: 'It`s ok...let`s just start one more time...',
      speaker: CharacterName.system),
  ScriptItem(
      script: 'I`m sorry Andrew, I guess this is it',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.talk),
      ]),
  ScriptItem(script: '...', speaker: CharacterName.system),
  ScriptItem(
      script:
          'I know you send me to this fantasy because I like these novels...I`m not stupid.',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(script: '...', speaker: CharacterName.system),
  ScriptItem(script: 'How did you know?', speaker: CharacterName.andrew),
  ScriptItem(
      script: 'Well, from my mom, isn`t it?',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.talk),
      ]),
  ScriptItem(
      script: '...I thought you don`t know...', speaker: CharacterName.andrew),
  ScriptItem(
      script:
          'I guess you really want to lore the dark side of me...that`s why the Empress looks like my mother...',
      speaker: CharacterName.jas),
  ScriptItem(
      script:
          'You think I don`t remember her face? I actually restored my memory before our mission--I can`t make any mistakes.',
      speaker: CharacterName.jas),
  ScriptItem(script: '...', speaker: CharacterName.andrew),
  ScriptItem(
      script: 'Even it is so painful.',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.cryhappy),
      ]),
  ScriptItem(
      script:
          'So I know it is you, you set me up, since you are the only one knows my past.',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.talk),
      ]),
  ScriptItem(
      script: 'I`m sorry Jas, I just want you to be alive...',
      speaker: CharacterName.andrew),
  ScriptItem(
      script: 'By setting me up like this?',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry)
      ]),
  ScriptItem(
      script:
          'The glory belongs to my country! After all these years, after everything I sacrificed...',
      speaker: CharacterName.andrew),
  ScriptItem(
      script: 'I wanted to keep you alive. Sadly, you must die now.',
      speaker: CharacterName.andrew),
  ScriptItem(
      script: '...Do you really think you can kill me now?',
      speaker: CharacterName.jas),
  ScriptItem(script: 'What did you do???', speaker: CharacterName.andrew),
  ScriptItem(
      script: 'It`s time to go back to the real world, Andrew.',
      speaker: CharacterName.jas),
];

const fireLoopScript = [
  ScriptItem(
      script: 'I guess we have to do this again...',
      speaker: CharacterName.system),
];
