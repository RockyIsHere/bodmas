import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KeyBoard extends StatelessWidget {
  const KeyBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i in "+-x%".split("")) KeyBuilder( number: i,)
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i in "0123".split("")) KeyBuilder(number: i,)
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i in "4567".split("")) KeyBuilder( number: i,)
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i in "<89_".split("")) KeyBuilder( number: i,)
          ],
        ),
      ],
    );
  }
}

class KeyBuilder extends StatelessWidget {
  final String number;

  const KeyBuilder({required this.number, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget keyCap;
    double width = 75;
    if (number == "_") {
      keyCap = const Icon(
        Icons.keyboard_return,
        size: 18,
      );
    } else if (number == "<") {
      keyCap = const Icon(
        Icons.backspace_outlined,
        size: 18,
      );
    } else {
      width = 75;
      keyCap = Text(
        number.toUpperCase(),
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      );
    }
    return InkWell(
      onTap: () {
      },
      child: Container(
        width: width,
        height: 50,
        alignment: Alignment.center,
        margin: EdgeInsets.all(3),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            color: Color.fromARGB(44, 44, 44, 44)),
        child: keyCap ,
      ),
    );
  }
}





 
    