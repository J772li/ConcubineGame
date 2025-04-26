import 'package:ember_quest/button.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'ember_quest.dart';

class PixelAnimation extends PositionComponent
    with HasGameReference<EmberQuest> {
  final List<Vector2> _pixels = [];
  final List<Vector2> _visiblePixels = [];
  final double _pixelSize = 100.0;
  TimerComponent? _animationTimer;
  bool _isRevealing = true;
  TimerComponent? _holdTimer;
  bool _isEnding = false;
  bool _isGoodEnding = false;

  PixelAnimation({required bool isEnding, bool? isGoodEnding}) {
    _isEnding = isEnding;
    _isGoodEnding = isGoodEnding ?? false;
  }

  @override
  Future<void> onLoad() async {
    // Calculate how many pixels we need
    final xCount = (game.size.x / _pixelSize).ceil();
    final yCount = (game.size.y / _pixelSize).ceil();

    // Create all possible pixel positions
    for (int x = 0; x < xCount; x++) {
      for (int y = 0; y < yCount; y++) {
        _pixels.add(Vector2(x * _pixelSize, y * _pixelSize));
      }
    }
    _pixels.shuffle();

    _holdTimer = TimerComponent(
      period: 2.0,
      repeat: false,
      onTick: () {
        _pixels.addAll(_visiblePixels);
        _pixels.shuffle();
      },
    );

    if (!_isEnding) {
      // Start animation
      _animationTimer = TimerComponent(
        period: 0.005,
        repeat: true,
        onTick: () {
          if (_isRevealing) {
            // Add pixels until all are visible
            if (_pixels.isNotEmpty) {
              _visiblePixels.add(_pixels.removeLast());
            } else {
              _isRevealing = false;
              // Wait 3 seconds before hiding
              add(_holdTimer!);
            }
          } else {
            if (_holdTimer?.timer.finished ?? false) {
              if (_visiblePixels.isNotEmpty) {
                _visiblePixels.removeLast();
              } else {
                removeFromParent();
              }
            }
          }
        },
      );
      add(_animationTimer!);
    } else {
      _animationTimer = TimerComponent(
        period: 0.005,
        repeat: true,
        onTick: () {
          if (_isRevealing) {
            // Add pixels until all are visible
            if (_pixels.isNotEmpty) {
              _visiblePixels.add(_pixels.removeLast());
            } else {
              _isRevealing = false;
              // Wait 3 seconds before hiding
              add(_holdTimer!);
            }
          }
        },
      );
      add(_animationTimer!);
      if (_isGoodEnding) {
        add(SpriteComponent(
          sprite: Sprite(game.images.fromCache('good_ending.png')),
          size: Vector2(game.size.x, game.size.y),
        ));
      } else {
        add(SpriteComponent(
          sprite: Sprite(game.images.fromCache('bad_ending.png')),
          size: Vector2(game.size.x, game.size.y),
        ));
      }
      add(Button(
        text: "play again?",
        onPressed: () {
          game.leftFrame.restartGame();
        },
        position: Vector2(game.size.x / 2, 600),
        anchor: Anchor.center,
      ));
    }
  }

  @override
  void render(Canvas canvas) {
    final paint = Paint()..color = const Color.fromARGB(255, 0, 0, 30);

    // Draw all visible pixels
    for (final pixel in _visiblePixels) {
      canvas.drawRect(
        Rect.fromLTWH(pixel.x, pixel.y, _pixelSize, _pixelSize),
        paint,
      );
    }
  }

  @override
  void onRemove() {
    _animationTimer?.removeFromParent();
    super.onRemove();
  }
}
