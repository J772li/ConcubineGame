import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flame/effects.dart';
import 'ember_quest.dart';
import './script/script.dart';

class Avatar extends SpriteComponent with HasGameReference<EmberQuest> {
  final String imagePath;
  static const double avatarSize = 150;
  final CharacterName name;

  Avatar({
    required this.imagePath,
    required Vector2 position,
    required this.name,
  }) : super(
          size: Vector2.all(avatarSize),
          position: position,
          anchor: Anchor.center,
        );

  @override
  Future<void> onLoad() async {
    try {
      sprite = Sprite(game.images.fromCache(imagePath));

      // Add fade-in animation
      add(
        OpacityEffect.fadeIn(
          LinearEffectController(1.0), // 1 second duration
        ),
      );
    } catch (e) {
      debugPrint('Error loading image: $e');
      debugPrint('Stack trace: ${StackTrace.current}');
    }
  }

  void changeEmotion(Emotion emotion) {
    add(
      OpacityEffect.fadeIn(
        LinearEffectController(0.5), // 1 second duration
      ),
    );
    sprite = Sprite(game.images.fromCache('${name.name}_${emotion.name}.png'));
  }
}
