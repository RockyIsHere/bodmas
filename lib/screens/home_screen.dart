import 'package:bodmas_comp/widgets/bodmas_grid.dart';
import 'package:bodmas_comp/widgets/keyboard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
             Center(
               child: Text(
                  "BODMAS",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
             ),
             BodmasGrid(),
             KeyBoard()
          ],
          
        ),
      ),
    );
  }
}

