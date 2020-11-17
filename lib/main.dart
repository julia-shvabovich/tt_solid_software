import 'dart:math' as math;
import 'package:flutter/material.dart';

main() => runApp(
  Directionality(
    textDirection: TextDirection.ltr,
    child: MyApp(),
  ),
);

class MyApp extends StatefulWidget {
  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MyApp> {
  Color currentColor = BackgroundColor().getRandomColor();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
        color: currentColor,
        child: Container(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentColor = BackgroundColor().getRandomColor();
                });
              },
            )
        )
    ),
        Container(
          child: Center(
            child: Text("Hey there!",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.black)
            ),
          ),
        ),
      ],
    );
  }
}

class BackgroundColor extends ChangeNotifier {
  var colorBound = 255;

  Color getRandomColor() {
    return Color.fromRGBO(
        math.Random().nextInt(colorBound),
        math.Random().nextInt(colorBound),
        math.Random().nextInt(colorBound),
        1.0);
  }
}
