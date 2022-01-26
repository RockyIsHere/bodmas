import 'package:bodmas_comp/controller/game_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameScreen extends StatelessWidget {
  GameScreen({Key? key}) : super(key: key);

  final GameController gameController = Get.put(GameController());
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _controller,
          ),
          ElevatedButton(
              onPressed: () {
                gameController.generateEquation(givenNum: _controller.text);
              },
              child: const Text('Save')),
          Text(
              '${gameController.n1} ${gameController.b1} ${gameController.n2} ${gameController.b2} ${gameController.n3}')
        ],
      ),
    );
  }
}
