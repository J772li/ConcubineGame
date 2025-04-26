import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flame/text.dart';
import 'dart:math' as math;
import 'consts.dart';
import 'ember_quest.dart';

class ChatBox extends TextBoxComponent with HasGameReference<EmberQuest> {
  static const double padding = 10;
  final double minHeight = 80;
  final String _fullText;
  String _displayedText = '';
  TimerComponent? _typingTimer;
  final double _typingSpeed = 0.05; // seconds per character
  final bool isChat;

  bool get isTyping => _typingTimer != null;

  ChatBox({
    required super.position,
    required String text,
    required TextStyle style,
    required TextBoxConfig boxConfig,
    required this.isChat,
  }) : _fullText = text,
        super(
          text: '',
          textRenderer: TextPaint(style: style),
          boxConfig: boxConfig,
          anchor: Anchor.topLeft,
        );

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    _startTypingAnimation();
  }

  void _startTypingAnimation() {
    _typingTimer = TimerComponent(
      period: _typingSpeed,
      repeat: true,
      onTick: () {
        if (_displayedText.length < _fullText.length) {
          _displayedText = _fullText.substring(0, _displayedText.length + 1);
          text = _displayedText;
        } else {
          _typingTimer?.removeFromParent();
          _typingTimer = null;
        }
      },
    );
    add(_typingTimer!);
  }

  void skipTyping() {
    if (_typingTimer != null) {
      _typingTimer?.removeFromParent();
      _typingTimer = null;
      text = _fullText;
    }
  }

  @override
  void render(Canvas canvas) {
    size = Vector2(
      game.size.x * 0.47,
      isChat ? math.max(minHeight, size.y) : size.y,
    );
    
    if (isChat) {
    // Draw border
    final borderPaint = Paint()
      ..color = const Color.fromARGB(255, 38, 57, 53)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    canvas.drawRect(
        Rect.fromLTWH(0, 0, size.x, size.y),
        borderPaint,
      );
    }

    super.render(canvas);
  }

  @override
  void onRemove() {
    _typingTimer?.removeFromParent();
    super.onRemove();
  }
}
