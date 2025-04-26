class ScriptItem {
  final String script;
  final CharacterName speaker;
  final List<CharacterChart> characterChanges;

  const ScriptItem({
    required this.script,
    this.speaker = CharacterName.none,
    this.characterChanges = const [],
  });
}

class CharacterChart {
  final CharacterName name;
  final Emotion emotion;

  const CharacterChart({
    required this.name,
    required this.emotion,
  });
}

enum Emotion {
  dark,
  angry,
  cryhappy,
  talk,
  tears,
  angrytalk,
  cry,
}

enum CharacterName {
  andrew("Andrew"),
  unknown("???"),
  none(""),
  jas("Jas"),
  system("System"),
  theEmperor("The Emperor"),
  theEmpress("The Empress"),
  nephew("Young Marquis");

  final String displayName;
  const CharacterName(this.displayName);
}

enum Scene {
  opening,
  reopening,
  a,
  b,
  aa,
  ab,
  ba,
  bb,
  aaa,
  aab,
  abb,
  bbb,
  baa,
}

