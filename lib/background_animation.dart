import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'ember_quest.dart';

class Star {
  final Vector2 position;
  final double size;
  double brightness;
  double twinkleSpeed;
  double twinklePhase;

  Star({
    required this.position,
    required this.size,
    required this.twinkleSpeed,
  }) : brightness = 0.5 + math.Random().nextDouble() * 0.5,
       twinklePhase = math.Random().nextDouble() * 2 * math.pi;
}

class BackgroundAnimation extends PositionComponent with HasGameReference<EmberQuest> {
  final List<Star> _stars = [];
  final int _numStars = 200;
  final double _smallStarWidth = 6;
  final double _smallStarHeight = 8;
  final double _largeStarWidth = 12;
  final double _largeStarHeight = 16;

  @override
  Future<void> onLoad() async {
    final random = math.Random();
    
    // Create stars
    for (int i = 0; i < _numStars; i++) {
      final isLarge = random.nextDouble() < 0.2; // 20% chance of being large
      _stars.add(Star(
        position: Vector2(
          random.nextDouble() * game.size.x,
          random.nextDouble() * game.size.y,
        ),
        size: isLarge ? _largeStarWidth : _smallStarWidth,
        twinkleSpeed: 0.5 + random.nextDouble() * 2.0, // Random twinkle speed
      ));
    }
  }

  @override
  void update(double dt) {
    for (final star in _stars) {
      star.twinklePhase += dt * star.twinkleSpeed;
      star.brightness = 0.5 + 0.5 * math.sin(star.twinklePhase);
    }
  }

  @override
  void render(Canvas canvas) {
    final backgroundPaint = Paint()
      ..color = const Color.fromARGB(255, 0, 0, 30)
      ..style = PaintingStyle.fill;
    canvas.drawRect(
      Rect.fromLTWH(0, 0, game.size.x, game.size.y),
      backgroundPaint,
    );

    for (final star in _stars) {
      final brightness = star.brightness;
      final paint = Paint()
        ..color = Color.fromARGB(
          255,
          (255 * brightness).round(),
          (255 * brightness).round(),
          (255 * brightness).round(),
        )
        ..style = PaintingStyle.fill;

      final height = star.size == _smallStarWidth ? _smallStarHeight : _largeStarHeight;
      final centerX = star.position.x;
      final centerY = star.position.y;
      
      canvas.drawRect(
        Rect.fromCenter(
          center: Offset(centerX, centerY),
          width: star.size,
          height: height / 3,
        ),
        paint,
      );
      
      canvas.drawRect(
        Rect.fromCenter(
          center: Offset(centerX, centerY),
          width: height / 3,
          height: star.size+4,
        ),
        paint,
      );
    }
  }
} 