import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey[900],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        children: [
                          buttonContainer('C', 1, Color(0xFF2D191E),
                              textColor: Colors.red),
                          buttonContainer('(', 1, Color(0xFF222427)),
                          buttonContainer(')', 1, Color(0xFF222427)),
                          buttonContainer('/', 1, Color(0xFFFF9500)),
                        ],
                      ),
                      Row(
                        children: [
                          buttonContainer('7', 1, Color(0xFF222427)),
                          buttonContainer('8', 1, Color(0xFF222427)),
                          buttonContainer('9', 1, Color(0xFF222427)),
                          buttonContainer('x', 1, Color(0xFFFF9500)),
                        ],
                      ),
                      Row(
                        children: [
                          buttonContainer('4', 1, Color(0xFF222427)),
                          buttonContainer('5', 1, Color(0xFF222427)),
                          buttonContainer('6', 1, Color(0xFF222427)),
                          buttonContainer('-', 1, Color(0xFFFF9500)),
                        ],
                      ),
                      Row(
                        children: [
                          buttonContainer('1', 1, Color(0xFF222427)),
                          buttonContainer('2', 1, Color(0xFF222427)),
                          buttonContainer('3', 1, Color(0xFF222427)),
                          buttonContainer('+', 1, Color(0xFFFF9500)),
                        ],
                      ),
                      Row(
                        children: [
                          buttonContainer('0', 2, Color(0xFF222427)),
                          buttonContainer('.', 1, Color(0xFF222427)),
                          buttonContainer('=', 1, Color(0xFF2EC973)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded buttonContainer(String value, int flex, Color color,
      {Color textColor = Colors.white}) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: RaisedButton(
          onPressed: () {},
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: color,
          child: Text(
            value,
            style: TextStyle(
              color: textColor,
              fontSize: 25.0,
            ),
          ),
        ),
      ),
    );
  }
}
