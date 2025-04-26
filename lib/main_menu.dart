import 'package:flame/components.dart';
import 'package:ember_quest/ember_quest.dart';
import 'package:ember_quest/button.dart';

class MainMenu extends PositionComponent with HasGameReference<EmberQuest> {
  @override
  void onLoad() {
    super.onLoad();
    add(SpriteComponent(
      sprite: Sprite(game.images.fromCache('title.png')),
      size: Vector2(game.size.x, game.size.y),
    ));
    add(
      Button(
        text: 'Play',
        onPressed: () {
          game.loadGame();
          removeFromParent();
        },
        position: Vector2(game.size.x / 2, game.size.y - 200),
        anchor: Anchor.center,
      ),
    );
  }
}
