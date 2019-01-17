import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'dart:convert';//JSON
import 'package:http/http.dart' as http;

class login extends StatefulWidget {
  @override
  _loginState createState() => new _loginState();
}


class _loginState extends State<login> {
  @override
  var authen ;
  var username = TextEditingController();
  var savePassword = false;
  var password = TextEditingController();
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    verify();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
              decoration: BoxDecoration(color: Color(4280772949)),
              child: Center(

                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      CircleAvatar(
                        backgroundImage: AssetImage("assets/logo.jpg"),
                        maxRadius: 60,
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: <Widget>[
                            TextField(
                              controller: username,
                              cursorColor: Colors.white,

                              decoration: InputDecoration(

                                fillColor: Colors.white,
                                filled: true,
                                labelStyle: TextStyle(color: Color(4282492301),fontSize: 20),
                                labelText: 'username',
                                icon: Icon(Icons.people,color: Colors.white),

                              ),
                              maxLines: 1,

                            ),
                            SizedBox(height: 15,),
                            TextField(
                              
                              controller: password,
                              cursorColor: Colors.white,

                              decoration: InputDecoration(

                                fillColor: Colors.white,
                                filled: true,
                                labelStyle: TextStyle(color: Color(4282492301),fontSize: 20),
                                labelText: 'password',
                                icon: Icon(Icons.people,color: Colors.white),

                              ),
                              maxLines: 1,
                              //obscureText: true,

                            ),
                            SizedBox(height: 15,),
                            Row(

                              children: <Widget>[
                                SizedBox(width: 30.0,),

                                Checkbox(
                                  value: savePassword,
                                  onChanged: savePasswordCheck,
                                  activeColor: Colors.white,

                                ),
                                Text("save password", style:
                                TextStyle(
                                  fontSize: 16.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  color: Color(4282492301),
                                ),),

                              ],
                            ),

                            SizedBox(height: 15,),
                            RaisedButton(
                                shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(5, 30))),
                               // shape: CircleBorder(side: BorderSide(color: Color(4294942777 ))),
                                color: Colors.white,

                                child:Padding(

                                  padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                  child:
                                  Text("Login",style: TextStyle(
                                    fontSize: 16.0,color: Color(4282492301),
                                  ),),
                                ),
                                onPressed: (){
                                  connect();
                                }
                            ),
                            SizedBox(height: 64.0,),
                            Row(
                              children: <Widget>[
                                Text("Don't you have an account?",style: TextStyle(
                                  fontSize: 16.0,color: Color(4282492301),
                                ),),
                                FlatButton(
                                  child: Text("sign up",style: TextStyle(
                                    fontSize: 16.0,color: Color(4282492301),
                                  ),),
                                  onPressed: (){
                                    Navigator.pushNamed(context, '/Sign');

                                  },

                                )
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
        ),

    );
  }


  void savePasswordCheck(bool value) {
    setState(() {
      savePassword = value;
    });
  }

  Future<List> connect() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("authenticated", false) ;
    final response = await http.post("http://192.168.1.6/hakou.php", body: {
      "phoneNumber": username.text,
      "password": password.text
    });
    var Answer = json.decode(response.body);
    if(Answer['success']==1){
      if(savePassword == true){
        prefs.setBool("authenticated",true) ;
      }
      else prefs.setBool("authenticated",false) ;
      Navigator.pushNamedAndRemoveUntil(context, '/home',ModalRoute.withName('/home'));


    }else{
      print("login not  success");

    }
  }
  Future verify()async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    authen = prefs.get("authenticated");
  }

}
