import 'dart:math';

import 'package:get/get.dart';

class GameController extends GetxController {
  List<int> numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<String> operators = ['/', '*', '+', '-'];
  var demoList = [];
  var n1 = -1.obs;
  var n2 = -1.obs;
  var n3 = -1.obs;
  var b1 = '-'.obs;
  var b2 = '-'.obs;

  List shuffle(List items) {
    var random = Random();
    for (var i = items.length - 1; i > 0; i--) {
      var n = random.nextInt(i + 1);
      var temp = items[i];
      items[i] = items[n];
      items[n] = temp;
    }
    return items;
  }

  generateEquation({required String givenNum}) {
    for (var i in shuffle(numbers)) {
      for (var x in shuffle(operators)) {
        for (var j in shuffle(numbers)) {
          for (var y in shuffle(operators)) {
            for (var k in shuffle(numbers)) {
              var generateNum = '';
              if (x == '/' && y == '/') {
                generateNum = '${i / j / k}';
              }
              if (x == '/' && y == '*') {
                generateNum = '${i / j * k}';
              }
              if (x == '/' && y == '+') {
                generateNum = '${i / j + k}';
              }
              if (x == '/' && y == '-') {
                generateNum = '${i / j - k}';
              }

              if (x == '*' && y == '/') {
                generateNum = '${i * j / k}';
              }
              if (x == '*' && y == '*') {
                generateNum = '${i * j * k}';
              }
              if (x == '*' && y == '+') {
                generateNum = '${i * j + k}';
              }
              if (x == '*' && y == '-') {
                generateNum = '${i * j - k}';
              }

              if (x == '+' && y == '/') {
                generateNum = '${i + j / k}';
              }
              if (x == '+' && y == '*') {
                generateNum = '${i + j * k}';
              }
              if (x == '+' && y == '+') {
                generateNum = '${i + j + k}';
              }
              if (x == '+' && y == '-') {
                generateNum = '${i + j - k}';
              }

              if (x == '-' && y == '/') {
                generateNum = '${i - j / k}';
              }
              if (x == '-' && y == '*') {
                generateNum = '${i - j * k}';
              }
              if (x == '-' && y == '+') {
                generateNum = '${i - j + k}';
              }
              if (x == '-' && y == '-') {
                generateNum = '${i - j - k}';
              }

              if ((generateNum == givenNum) && demoList.isEmpty) {
                n1 = i;
                n2 = j;
                n3 = k;
                b1.value = x;
                b2.value = y;
                print('$n1 $b1 $n2 $b2 $n3');
                demoList.add('$n1 $b1 $n2 $b2 $n3');
              }
            }
          }
        }
      }
    }
  }
}
