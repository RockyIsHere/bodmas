import 'package:bodmas_comp/widgets/bodmas_row.dart';
import 'package:flutter/material.dart';


class BodmasGrid extends StatelessWidget {
  const BodmasGrid({Key? key}) ;

  @override
  Widget build(BuildContext context) {

    const wordSize = 5;
    final List<BodmasRow> rows = List.empty(growable: true);
    for (int i = 0; i < 3; i++) {
      var word = "";
      if (3 > i) {
       // word = gameState.attempts[i];
      }
      var attempted = false;
      // if (gameState.attempted > i) {
      //   attempted = true;
      // }
      rows.add(BodmasRow(
        wordsize: wordSize,
        word: word,
        attempted: attempted, correctWord: '',
      ));
    }
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: rows,
      ),
    );
  }
}
