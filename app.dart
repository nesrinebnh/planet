import 'package:flutter/material.dart';
import 'start.dart';
import 'login.dart';
import 'home.dart';
import 'home2.dart';
import 'addToScreen.dart';
import 'Sign.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  String title ;
  String body;


  @override

  Widget build(BuildContext context) {


    return MaterialApp(

      // TODO: Change home: to a Backdrop with a HomePage frontLayer (104)

      // TODO: Make currentCategory field take _currentCategory (104)
      // TODO: Change backLayer field value to CategoryMenuPage (104)
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: <String, WidgetBuilder>{

          '/login': (BuildContext context) => new login(),
          '/home': (BuildContext context) => new home(),
          '/home2': (BuildContext context) => new home2(),
          '/addToScreen': (BuildContext context) => new addToScreen(),
          '/Sign': (BuildContext context) => new Sign(),
          '/': (BuildContext context) => new startPage() ,

        }
      // TODO: Add a theme (103)
    );

  }
}
