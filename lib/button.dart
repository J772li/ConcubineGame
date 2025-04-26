import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart';
import 'ember_quest.dart';
import 'consts.dart';

class Button extends PositionComponent
    with TapCallbacks, HasGameReference<EmberQuest> {
  final String text;
  final VoidCallback onPressed;
  final double padding = 10.0;

  Button({
    required this.text,
    required this.onPressed,
    required Vector2 position,
    super.anchor = Anchor.topLeft,
  }) : super(position: position);

  @override
  void onLoad() {
    super.onLoad();
    size = Vector2(game.size.x * 0.47, 50);
  }

  @override
  void render(Canvas canvas) {
    // Draw background
    final borderPaint = Paint()
      ..color = const Color.fromARGB(255, 38, 57, 53)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.x, size.y),
      borderPaint,
    );

    // Draw text
    final textSpan = TextSpan(
      text: text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontFamily: 'MedodicaRegular',
        fontWeight: FontWeight.w500,
      ),
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();

    final textX = (size.x - textPainter.width) / 2;
    final textY = (size.y - textPainter.height) / 2;
    textPainter.paint(canvas, Offset(textX, textY));
  }

  @override
  void onTapDown(TapDownEvent event) {
    onPressed();
  }
}
