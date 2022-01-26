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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextField(
                controller: _controller,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  gameController.generateEquation(givenNum: _controller.text);
                },
                child: const Text('Save')),
            const SizedBox(
              height: 30,
            ),
            Obx(
              () => Text(
                gameController.getEqution.value,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
