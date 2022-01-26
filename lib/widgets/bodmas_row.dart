import 'package:bodmas_comp/widgets/bodmas_container.dart';
import 'package:flutter/material.dart';

class BodmasRow extends StatelessWidget {
  final int wordsize;
  final String word;
  final String correctWord;
  final bool attempted;

  const BodmasRow(
      {Key? key,
      required this.wordsize,
      required this.word,
      required this.correctWord,
      required this.attempted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<BodmasContainer> boxes = List.empty(growable: true);

    for (int j = 0; j < wordsize; j++) {
      var letter = "";
      if (word.length > j) {
        letter = word[j];
      }
      boxes.add(BodmasContainer(
        pos: j,
        letter: letter,
        attempted: attempted,
        correctWord: correctWord,
      ));
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: boxes,
    );
  }
}
