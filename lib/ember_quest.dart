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
    if (_rightPanel.children.whereType<Avatar>().isEmpty) {
      _rightPanel.avatarAction();
    }
    _leftFrame.chatBoxAction();
  }

  @override
  Color backgroundColor() {
    return const Color.fromARGB(
        255, 0, 0, 30); // Dark blue to match the starry background
  }

  RightPanel get rightPanel => _rightPanel;

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
];
