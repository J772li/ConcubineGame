import 'package:ember_quest/script/script.dart';

const openScript = [
  ScriptItem(script: '...', speaker: CharacterName.unknown),
  ScriptItem(script: '......Jas?', speaker: CharacterName.unknown),
  ScriptItem(script: 'Jas, you need wake up.', speaker: CharacterName.unknown),
  ScriptItem(
      script: '......uhh.........',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.tears),
      ]),
  ScriptItem(
      script:
          'Someone is calling my name, I try to wake up, but my head is like a snow globe smash on the floor, and shards everywhere. Even opening my eyes is difficult, not mentioning moving my body.'),
  ScriptItem(
      script:
          'You need to wake up, now, there is no time, the emperor will come in any time.',
      speaker: CharacterName.unknown),
  ScriptItem(
      script:
          'What the f*ck emperor? I was working til dawn for 48 hrs straight...And who is talking to me in ths robostic voice?',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(
      script:
          'Long story short. I`m your system, and you are in the novel you were reading before your trip started.',
      speaker: CharacterName.unknown),
  ScriptItem(script: 'Wait a second, I`m dead?',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.talk),
      ]),
  ScriptItem(
      script:
          'Yes, you were dead, but luckily reborn to a novel! Just like all the novels you read, now get up and complete the mission.',
      speaker: CharacterName.system),
  ScriptItem(script: '...What mission?', speaker: CharacterName.jas, characterChanges: [
    CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
  ]),
  ScriptItem(
      script:
          'I made a sound, cannot even recognize it is a human voice, it`s more like someone accidentally tugged the string of an old instrument.'),
  ScriptItem(
      script: 'Oh, you sounds...terrible. There, let me cure that.',
      speaker: CharacterName.system),
  ScriptItem(
      script:
          'Immediately, I feel so much better, the broken snow globe is fixed and put back on the shelf again.'),
  ScriptItem(
      script:
          '-- My head starts to run again, superisingly I handled the fact that I respawed in a novel pretty well. Since I`m always reading respawn novels after work, that`s my only leasure.'),
  ScriptItem(
      script:
          'You don`t understand, I need to go back, there is something very important... I need to do.',
      speaker: CharacterName.jas, characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(
      script:
          'The voice that escapes my lips is unbelievably melodious, but my own voice is always raspy and hoarse.'),
  ScriptItem(
      script:
          '-- Andrew, my colleage always says I don`t drink enough water. Well, the water on our spaceship is filtered from either his pee or mine. Luckily, I don`t need to drink pee anymore.'),
  ScriptItem(
      script:
          'I understand, but don`t you worry, the time in your world is frozen, until you finish the mission, you can immediately go back to what you were doing.',
      speaker: CharacterName.system),
  ScriptItem(
      script: 'Are you sure? It`s really urgent!',
      speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
      ]),
  ScriptItem(
      script: 'What other choice do you have?', speaker: CharacterName.system),
  ScriptItem(script: '...', speaker: CharacterName.jas, characterChanges: [
    CharacterChart(name: CharacterName.jas, emotion: Emotion.dark),
  ]),
  ScriptItem(
      script:
          'There, there. I`m sure we can do it together. I will save you, and you can help me save this novel, deal?',
      speaker: CharacterName.system),
  ScriptItem(
      script:
          'I opened my eyes. I m lying on a carved pear blossom bed with a set of silk quilts, through the bed curtains, I could vaguely see distant porcelain and the golden ornaments on the dressing table.'),
  ScriptItem(
      script:
          'I`ve always been dreaming to come to ancient China! It`s just bad timing for me...',
      speaker: CharacterName.jas, characterChanges: [
    CharacterChart(name: CharacterName.jas, emotion: Emotion.cryhappy),
  ]),
  ScriptItem(
      script:
          '......yeah sure, but if you don`t complete your mission, you will die.',
      speaker: CharacterName.system),
  ScriptItem(script: '...the f*ck?', speaker: CharacterName.jas, characterChanges: [
    CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
  ]),
  ScriptItem(
      script:
          'The system briefly explained the situation to me. I`m reborn to this Qi Dynasty, which is not in real history but uses ancient Chinese setup.',
          characterChanges: [
            CharacterChart(name: CharacterName.jas, emotion: Emotion.dark),
          ]),
  ScriptItem(
      script:
          'This is a Mary Sue novel. I am using the body of this villainous concubine, whose only purpose is to expedite the romance between the emperor and the empress.'),
  ScriptItem(
      script:
          'The concubine knew the emperor since youth. He loved her for saving him—but it was the empress who did.'),
  ScriptItem(
      script:
          'The emperor was attacked and fell into a cave. Injured and blind, he gave his jade pendant to his savior—the empress.'),
  ScriptItem(script: 'But the concubine, her half-sister, stole the credit.'),
  ScriptItem(
      script:
          'The empress stayed silent, forgiving the concubine, even though she had fallen for the emperor.'),
  ScriptItem(
      script:
          'The concubine became the emperor`s love. Jealous and ruthless, she silences anyone who nears him.'),
  ScriptItem(
      script:
          'The emperor indulges her, believing she once saved him—even as she harms others.'),
  ScriptItem(
      script:
          'But his heart never fully belonged to her. He`s drawn to the empress, blessed by the gods, yet clings to the lie that he loves the concubine.'),
  ScriptItem(
      script:
          'Eventually, the emperor sees through the concubine`s true nature and has her executed, living happily ever after with the empress.'),
  ScriptItem(
      script:
          'Phew...that was a lot of words...Your mission is to stick with the plan, be villainous and reckless as you can.',
      speaker: CharacterName.system),
  ScriptItem(
      script: '...Why can`t I just be honest?', speaker: CharacterName.jas,
      characterChanges: [
        CharacterChart(name: CharacterName.jas, emotion: Emotion.talk),
      ]),
  ScriptItem(
      script:
          'This world runs on a set plan, and we can`t change it. Just do as I say—it`s for your own good. You`ll be able to go home soon.',
      speaker: CharacterName.system),
  ScriptItem(script: '...', speaker: CharacterName.jas, characterChanges: [
    CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
  ]),
  ScriptItem(
    script:
        'Listen, you`re in this scene now. You claim the Empress pushed you into the lake, but you actually jumped in. You passed out after being rescued.',
    speaker: CharacterName.system,
  ),
  ScriptItem(
    script:
        'The Emperor will come soon. Just blame the Empress. Simple, right?',
    speaker: CharacterName.system,
  ),
  ScriptItem(
      script: 'If I stick with the plan, won`t I die in the end?',
      speaker: CharacterName.jas, characterChanges: [
    CharacterChart(name: CharacterName.jas, emotion: Emotion.angry),
  ]),
  ScriptItem(
      script:
          'Yes you will, but I will save your soul and return you back to your real body, don`t you have work to do?',
      speaker: CharacterName.system),
  ScriptItem(script: 'I...how did you know?', speaker: CharacterName.jas, characterChanges: [
    CharacterChart(name: CharacterName.jas, emotion: Emotion.dark),
  ]),
  ScriptItem(
      script:
          'I`m about to say something more, but then I heard someone announcing, "The Emperor has arrived!"'),
  ScriptItem(
      script: 'Someone hurriedly walked in and lifted the curtain of my bed--'),
  ScriptItem(
      script:
          'What met my eyes was a handsome face. His brows were like swords, his eyes bright as stars, and his nose bridge was high and straight, giving him a look of both strength and elegance. Any women will fell in love with this guy.',
          characterChanges: [
            CharacterChart(name: CharacterName.theEmperor, emotion: Emotion.cry),
          ]),
  ScriptItem(
      script:
          'However, this handsome face was now furrowed in a deep frown, his expression full of worry,',
          characterChanges: [
            CharacterChart(name: CharacterName.theEmperor, emotion: Emotion.cry),
          ]),
  ScriptItem(
      script:
          'Jassie, my love, how are you feeling? This filthy empress...I will kill her!',
      speaker: CharacterName.theEmperor,
      characterChanges: [
        CharacterChart(name: CharacterName.theEmperor, emotion: Emotion.angrytalk),
      ]),
  ScriptItem(
      script:
          'The Emperor looked very angry, but he didn`t seem to notice that he couldn`t resist mentioning the Empress, because he already fell in love with her.'),
  ScriptItem(
      script: 'Yes, this concubine`s name is also Jas, don`t you remember?',
      speaker: CharacterName.system),
  ScriptItem(script: '...', speaker: CharacterName.jas, characterChanges: [
    CharacterChart(name: CharacterName.jas, emotion: Emotion.cryhappy),
  ]),
  ScriptItem(
      script:
          'You looked at the Emperor with tear-filled eyes, unable to say a word. Seeing you so pitiful, the Emperor grew even angrier.'),
  ScriptItem(
      script: 'Empress...look what have you done! Get the hell in of here!',
      speaker: CharacterName.theEmperor, 
      characterChanges: [
        CharacterChart(name: CharacterName.theEmperor, emotion: Emotion.angrytalk),
      ]),
  ScriptItem(
      script:
          'A woman is pushed into the room and falls at the Emperor`s feet. She`s as beautiful as a delicate flower, but her eyes are swollen and red, stirring an instinctive urge to protect her.'),
  ScriptItem(
      script:
          'This woman looks familiar, even though you`re sure you`ve never met her before. She must be the Empress. Despite her beauty, you can`t feel anything good about her—looking at her even makes you a little uneasy.',
          characterChanges: [
            CharacterChart(name: CharacterName.theEmpress, emotion: Emotion.tears),
          ]),
  ScriptItem(
      script:
          '[The empress really looks like me...is it because I`m supposed to be her half-sister? Why do I hate her so much?]',
      speaker: CharacterName.jas, characterChanges: [
    CharacterChart(name: CharacterName.jas, emotion: Emotion.talk),
  ]),
  ScriptItem(
      script: 'Your majesty...it wasn`t me!',
      speaker: CharacterName.theEmpress,
      characterChanges: [
        CharacterChart(name: CharacterName.theEmpress, emotion: Emotion.talk),
      ]),
  ScriptItem(
      script:
          'Her face was filled with grievance, as crystalline tears slid down her porcelain-like cheeks, falling straight to the Emperor`s heart.'),
  ScriptItem(
      script:
          '......Your tears are fake! Don`t think you can make me believe you!',
      speaker: CharacterName.theEmperor, characterChanges: [
    CharacterChart(name: CharacterName.theEmperor, emotion: Emotion.angrytalk),
  ]),
  ScriptItem(
      script:
          'If you don`t trust me, I will have to use my death to prove my innocence.',
      speaker: CharacterName.theEmpress, characterChanges: [
    CharacterChart(name: CharacterName.theEmpress, emotion: Emotion.tears),
  ]),
  ScriptItem(
      script:
          'The Empress glanced at the Emperor seriously before lowering her head. She struggled to rise, looking as if she were ready to die to make her point.', 
          characterChanges: [
            CharacterChart(name: CharacterName.theEmpress, emotion: Emotion.tears),
          ]),
  ScriptItem(
      script:
          'The Emperor withdrew his hand, which had instinctively reached out to help her. His face was filled with hesitation, perhaps without even realizing that the Empress had already become so important to him.'),
  ScriptItem(
      script: 'Jas, say something, remember your mission.',
      speaker: CharacterName.system),
  ScriptItem(
      script:
          'F*ck...this job is even harder then the last one, even though I`m dead because of it...I`d rather have the "water" from our spaceship now.')
];

const reOpenScript = [
  ScriptItem(script: '...'),
  ScriptItem(
      script:
          'You don`t know how long it`s been—only that it`s been a blur of strange and shifting chaos.'),
  ScriptItem(
      script: 'It`s like being deep underwater… or floating on the sky.'),
  ScriptItem(
      script:
          'Your body is soaked, powerless to struggle; your mind feels like it`s been taken apart and put back together.'),
  ScriptItem(script: 'Somehow, it all feels familiar.'),
  ScriptItem(script: 'Random memories flash through your mind...'),
  ScriptItem(script: 'A415—the spaceship you worked on for most of your life.'),
  ScriptItem(script: 'Andrew, your only friend who always joking around.'),
  ScriptItem(script: 'Exploration missions for your country.'),
  ScriptItem(script: 'Earth, your home planet.'),
  ScriptItem(script: 'The orphanage, where you lived since ten.'),
  ScriptItem(script: 'The crystal ball.'),
  ScriptItem(
      script: 'You are such a bad girl, Jas...No wonder your father left you.',
      speaker: CharacterName.unknown),
  ScriptItem(script: 'The crystal ball shatters again.'),
  ScriptItem(script: '...'),
  ScriptItem(script: 'And once more, you hear that voice.'),
  ScriptItem(script: '......Jas?', speaker: CharacterName.system),
  ScriptItem(script: 'Jas, you need wake up.', speaker: CharacterName.system),
  ScriptItem(
      script: '[Oh...So this is what happening now...]',
      speaker: CharacterName.jas),
  ScriptItem(
    script: '...',
  ),
  ScriptItem(
      script:
          'Everything is restarted, once again, the system ask you to obey and follow the plan, you starts to wonder it this is not the second time you are in this scene, but might be the only time you kept your memory.'),
  ScriptItem(
      script:
          'The emperor comes in again, and the same things happen, and the empress still disgusts you.'),
  ScriptItem(script: '...'),
  ScriptItem(
      script: 'Jas, say something, remember your mission.',
      speaker: CharacterName.system),
  ScriptItem(script: '...'),
  ScriptItem(
      script: '[There`s nothing else I can do.]', speaker: CharacterName.jas),
];