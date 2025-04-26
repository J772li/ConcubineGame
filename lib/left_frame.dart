import 'package:flame/components.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'chat_box.dart';
import 'script/script.dart';
import '../ember_quest.dart';
import 'package:ember_quest/script/opening.dart';
import 'package:ember_quest/script/scene2.dart';
import '../button.dart';
import 'pixel_animation.dart';
import 'consts.dart';
import 'package:ember_quest/script/jade.dart';
import 'package:ember_quest/script/fire.dart';

class LeftFrame extends SpriteAnimationComponent
    with HasGameReference<EmberQuest> {
  final List<ChatBox> _chatBoxes = [];
  final double _chatSpacing = 10.0;
  final int _maxChatBoxes = 4;
  Scene scene = Scene.opening;
  int count = 0;
  final List<ScriptItem> _scriptItems = [];
  bool _didRestart = false;
  bool _isTyping = false;
  ScriptItem? _currentScript;
  bool _isGoodEnding = false;
  bool _isBadEnding = false;

  LeftFrame({
    required super.position,
  }) : super(size: Vector2.all(300), anchor: Anchor.topLeft);

  @override
  void onLoad() {
    super.onLoad();
    _scriptItems.addAll(openScript);
  }

  void chatBoxAction() {
    // Check if any chat box is still typing
    _isTyping = _chatBoxes.any((box) => box.isTyping);

    if (_isTyping) {
      // Skip typing for all typing chat boxes
      for (var box in _chatBoxes) {
        if (box.isTyping) {
          box.skipTyping();
        }
      }
      return;
    }

    if (_chatBoxes.length >= _maxChatBoxes) {
      for (var chatBox in _chatBoxes) {
        chatBox.removeFromParent();
      }
      _chatBoxes.clear();
    }
    addChatBox();
  }

  @override
  void render(Canvas canvas) {
    // Draw white background
    final backgroundPaint = Paint()
      ..color = const Color.fromARGB(170, 120, 144, 156)
      ..style = PaintingStyle.fill;
    canvas.drawRect(
      Rect.fromLTWH(0, 0, game.size.x * 0.5, game.size.y - 100),
      backgroundPaint,
    );

    // Draw border
    final borderPaint = Paint()
      ..color = const Color.fromARGB(255, 38, 57, 53)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    canvas.drawRect(
      Rect.fromLTWH(0, 0, game.size.x * 0.5, game.size.y - 100),
      borderPaint,
    );

    super.render(canvas);
  }

  void addChatBox() {
    if (_scriptItems.isEmpty) {
      final nextOptions = getNext(scene);
      if (nextOptions.isNotEmpty) {
        buttonSelection(nextOptions);
      }
      if (_isGoodEnding) {
        parent?.add(PixelAnimation(isEnding: true, isGoodEnding: true));
      } else if (_isBadEnding) {
        parent?.add(PixelAnimation(isEnding: true, isGoodEnding: false));
      }
      return;
    }
    final nextScript = _scriptItems.first;
    final scriptText = nextScript.speaker.displayName != ""
        ? '${nextScript.speaker.displayName} :  ${nextScript.script}'
        : nextScript.script;
    // Calculate total height of existing chat boxes
    double totalHeight = 20.0; // Start position
    for (final chatBox in _chatBoxes) {
      totalHeight += chatBox.size.y + _chatSpacing;
    }

    const chatBoxMargin = 10.0;

    final chatBox = ChatBox(
        position: Vector2(game.size.x * 0.015, totalHeight),
        text: scriptText,
        isChat: nextScript.speaker.displayName != "",
        style: const TextStyle(
          color: Colors.white,
          fontSize: fontSize,
          fontFamily: 'MedodicaRegular',
          fontWeight: FontWeight.w500,
        ),
        boxConfig: TextBoxConfig(
          maxWidth: game.size.x * 0.47,
          growingBox: true,
          margins: const EdgeInsets.all(chatBoxMargin),
        ));
    FlameAudio.play('button-click.mp3');
    add(chatBox);
    count = count + 1;
    _chatBoxes.add(chatBox);
    _currentScript = _scriptItems.removeAt(0);
    emotionChange();
  }

  void buttonSelection(List<Map<String, dynamic>> nextOptions) {
    final firstButtonPosition =
        Vector2(game.size.x * 0.015, game.size.y * 0.65);
    final secondButtonPosition =
        Vector2(game.size.x * 0.015, game.size.y * 0.65 + 60);
    if (scene == Scene.reopening) {
      final obeyButton = Button(
        text: 'Obey the system',
        position: secondButtonPosition,
        onPressed: () {
          onPressedGeneral(nextOptions[0]);
        },
      );
      add(obeyButton);
    } else {
      final honestButton = Button(
        text: 'Be honest',
        position: firstButtonPosition,
        onPressed: () {
          onPressedGeneral(nextOptions[0]);
        },
      );
      add(honestButton);
      final obeyButton = Button(
        text: 'Obey the system',
        position: secondButtonPosition,
        onPressed: () {
          onPressedGeneral(nextOptions[1]);
        },
      );
      add(obeyButton);
    }
  }

  void clearAllComponents() {
    for (final component in children.whereType<ChatBox>()) {
      component.removeFromParent();
      _chatBoxes.clear();
    }
    for (final component in children.whereType<Button>()) {
      component.removeFromParent();
    }
  }

  void onPressedGeneral(Map<String, dynamic> nextOptions) {
    clearAllComponents();
    _scriptItems.addAll(nextOptions['scripts']);
    count = 0;
    chatBoxAction();
    scene = nextOptions['scene'];
    _isGoodEnding = nextOptions['scripts'] == trueEndingScript;
    _isBadEnding = nextOptions['scripts'] == jadeObeyEndScript ||
        nextOptions['scripts'] == obeyEndScript;
  }

  void restartOpening() {
    parent?.add(PixelAnimation(isEnding: false));
    clearAllComponents();
    _scriptItems.addAll(reOpenScript);
    scene = Scene.reopening;
    chatBoxAction();
  }

  void restartGame() {
    parent?.add(PixelAnimation(isEnding: false));
    clearAllComponents();
    _scriptItems.addAll(openScript);
    scene = Scene.opening;
    _didRestart = false;
    _isGoodEnding = false;
    _isBadEnding = false;
    parent?.removeWhere((component) => component is PixelAnimation);
    chatBoxAction();
  }

  List<Map<String, dynamic>> getNext(Scene scene) {
    if (scene == Scene.opening) {
      return [
        {
          'scripts': honestLakeScript,
          'scene': Scene.a,
        },
        {
          'scripts': obeyLakeScript,
          'scene': Scene.b,
        },
      ];
    } else if (scene == Scene.a || scene == Scene.baa) {
      restartOpening();
      _didRestart = true;
      return [];
    } else if (scene == Scene.reopening) {
      return [
        {
          'scripts': obeyLakeScript,
          'scene': Scene.b,
        },
      ];
    } else if (scene == Scene.b) {
      return [
        {
          'scripts': jadeHonestScript, //honest jade script
          'scene': _didRestart ? Scene.aa : Scene.ba,
        },
        {
          'scripts': _didRestart
              ? jadeObeyContinueScript
              : jadeObeyEndScript, //obedient jade script
          'scene': _didRestart ? Scene.ab : Scene.bb,
        }
      ];
    } else if (scene == Scene.ba || scene == Scene.ab) {
      return [
        {'scripts': fireLoopScript, 'scene': Scene.baa},
        {
          'scripts': obeyEndScript,
          'scene': Scene.abb,
        },
      ];
    } else if (scene == Scene.aa) {
      return [
        {
          'scripts': trueEndingScript,
          'scene': Scene.aaa,
        },
        {
          'scripts': obeyEndScript,
          'scene': Scene.aab,
        }
      ];
    }
    return [];
  }

  List<CharacterChart> getCharacterChanges() {
    return _currentScript?.characterChanges ?? [];
  }

  void emotionChange() {
    List<CharacterChart> characterChanges = getCharacterChanges();
    if (characterChanges.isNotEmpty) {
      game.rightPanel.changeAvatarEmotion(characterChanges);
    }
  }
}
