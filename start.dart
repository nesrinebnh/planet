import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class startPage extends StatefulWidget {
  @override
  _startPageState createState() => _startPageState();
}

class _startPageState extends State<startPage> {

  SharedPreferences prefs;
  var auth =false ;

  void persist(bool value) {

    this.auth = value;

    prefs.setBool("authenticated", value);
  }
  checkIfAuthenticated() async {

    await Future.delayed(Duration(seconds: 10));

    return true;
  }
  @override
  Widget build(BuildContext context) {
    checkIfAuthenticated().then((auth1){
      SharedPreferences.getInstance().then((SharedPreferences sp) {
        prefs = sp;
        this.auth = prefs.getBool("authenticated");
        // will be null if never previously saved
        if (this.auth == null) {

          persist(false); // set an initial value

        }
          if(this.auth){
            Navigator.of(context).pushReplacementNamed('/home');
          }else
            Navigator.of(context).pushReplacementNamed('/login');
        }


      );

    });
    return Container(
      decoration: BoxDecoration(color: Color(4294967295)),
      child: Center(
        child: Image(image: AssetImage("assets/logo.jpg")),
      ),

    );
  }
}
