import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flame/events.dart';
import 'left_frame.dart';
import 'background_animation.dart';
import 'right_panel.dart';
import './script/script.dart';
import 'avatar.dart';

class EmberQuest extends FlameGame with TapCallbacks {
  late LeftFrame _leftFrame;
  late RightPanel _rightPanel;

  bool isTapping = false;
  double tapTimer = 2.0;

  @override
  void update(double dt) {
    super.update(dt);

    if (isTapping) {
      tapTimer -= dt;
      if (tapTimer <= 0.0) {
        _advanceOnce();
      }
    } else {
      tapTimer = 2.0;
    }
  }

  void _advanceOnce() {
    if (_rightPanel.children.whereType<Avatar>().isEmpty) {
      _rightPanel.avatarAction();
    }
    _leftFrame.chatBoxAction();
  }

  @override
  Future<void> onLoad() async {
    await images.loadAll(imageList);
    // Add background animation directly to the game (not the world)
    add(BackgroundAnimation());

    // Then add the left frame to the world
    _leftFrame = LeftFrame(position: Vector2(50, 50));
    world.add(_leftFrame);

    _rightPanel = RightPanel(avatarNames: [
      CharacterName.jas,
      CharacterName.theEmperor,
      CharacterName.theEmpress,
    ]);
    world.add(_rightPanel);

    // Set up camera
    camera = CameraComponent.withFixedResolution(
      width: 1024,
      height: 800,
    );
    camera.viewfinder.anchor = Anchor.topLeft;
    addAll([camera, world]);
  }

  @override
  void onTapDown(TapDownEvent event) {
    isTapping = true;
    _advanceOnce();
  }

  @override
  void onTapUp(TapUpEvent event) {
    isTapping = false;
  }

  @override
  void onTapCancel(TapCancelEvent event) {
    isTapping = false;
  }

  @override
  Color backgroundColor() {
    return const Color.fromARGB(
        255, 0, 0, 30); // Dark blue to match the starry background
  }

  RightPanel get rightPanel => _rightPanel;

  LeftFrame get leftFrame => _leftFrame;

  // Future<void> saveGame() async {
  // final prefs = await SharedPreferences.getInstance();
  // await prefs.setString('current_scene', scene.toString());
  // await prefs.setInt('script_index', currentScriptIndex);
  // // Save other data...
  // }
}

const imageList = [
  'jas_dark.png',
  'theEmperor_dark.png',
  'theEmpress_dark.png',
  'theEmperor_angrytalk.png',
  'theEmperor_cry.png',
  'theEmperor_tears.png',
  'theEmpress_cry.png',
  'theEmpress_dark.png',
  'theEmpress_talk.png',
  'theEmpress_tears.png',
  'jas_angry.png',
  'jas_talk.png',
  'jas_tears.png',
  'jas_cryhappy.png',
  'bad_ending.png',
  'good_ending.png',
];
