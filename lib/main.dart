import 'package:flutter/material.dart';
import 'package:ids_task/screens/home.dart';
void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppWithTheme();
  }
}


class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: <String, WidgetBuilder>{
        '/page': (BuildContext context) => new HomeScreen(),
      },
      home: new HomeScreen(),
    );
  }
}
