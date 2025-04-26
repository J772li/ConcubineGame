import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'ember_quest.dart';
import 'consts.dart';
import 'avatar.dart';
import './script/script.dart';

class RightPanel extends PositionComponent with HasGameReference<EmberQuest> {
  final List<CharacterName> avatarNames;
  final double spacing = 7.0;
  static const double panelSize = 350;

  RightPanel({
    required this.avatarNames,
  }) : super(size: Vector2.all(panelSize), position: Vector2(600, 230));

  @override
  void render(Canvas canvas) {
    // Draw background
    final backgroundPaint = Paint()
      ..color = const Color.fromARGB(170, 120, 144, 156)
      ..style = PaintingStyle.fill;
    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.x, size.y),
      backgroundPaint,
    );

    // Draw border
    final borderPaint = Paint()
      ..color = const Color.fromARGB(255, 38, 57, 53)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.x, size.y),
      borderPaint,
    );
    super.render(canvas);
  }

  void avatarAction() {
    for (int i = 0; i < avatarNames.length; i++) {
      final row = i ~/ 2;
      final col = i % 2;

      final avatar = Avatar(
        imagePath: '${avatarNames[i].name}_dark.png',
        position: Vector2(
          98 + (col * (Avatar.avatarSize + spacing)),
          98 + (row * (Avatar.avatarSize + spacing)),
        ),
        name: avatarNames[i],
      );
      add(avatar);
    }
  }

  void changeAvatarEmotion(List<CharacterChart> characterChanges) {
    int i = 0;
    try {
      for (i = 0; i < characterChanges.length; i++) {
        CharacterChart chart = characterChanges[i];
        final avatar = children.whereType<Avatar>().firstWhere((avatar) => avatar.name == chart.name) ;
        avatar.changeEmotion(chart.emotion);
      }
    } catch (e) {
      print("Error: $e, on ${characterChanges[i].name}");
    }
  }
}
