import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';//JSON
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';


class Sign extends StatefulWidget {
  @override
  _SignState createState() => new _SignState();
}

class _SignState extends State<Sign> {
  @override

  var name = TextEditingController();
  var surname = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var confirmPassword = TextEditingController();
  var farm = false;
  var terms = false;

  var gr = 0;

  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          backgroundColor: Color(4280772949 ),
        ),
          body:Container(
            decoration: BoxDecoration(color: Color(4282492301),),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Card(
                  color: Color(4280772949),

                  child: ListView(
                    /*mainAxisAlignment: MainAxisAlignment.center,*/
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Column(
                          children: <Widget>[

                            Text("SIGN UP", style:
                            TextStyle(
                              fontSize: 32.0,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),textAlign: TextAlign.center,),
                            SizedBox(height: 16.0),
                            TextField(

                              maxLines: 1,
                              cursorColor: Colors.white,
                              controller: name,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelStyle: TextStyle(color: Color(4282492301),),
                                labelText: 'First Name',
                              ),

                            ),
                            SizedBox(height: 16.0),
                            TextField(

                              maxLines: 1,
                              cursorColor: Colors.white,
                              controller: surname,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelStyle: TextStyle(color: Color(4282492301),),
                                labelText: 'Last Name',
                              ),

                            ),
                            SizedBox(height: 16.0),
                            TextField(

                              maxLines: 1,
                              cursorColor: Colors.white,
                              controller: email,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelStyle: TextStyle(color: Color(4282492301),),
                                labelText: 'email',
                              ),

                            ),
                            SizedBox(height: 16.0,),
                            TextField(
                              obscureText: true,
                              maxLines: 1,
                              cursorColor: Colors.white,
                              controller: password,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelStyle: TextStyle(color: Color(4282492301),),
                                labelText: 'password',
                              ),

                            ),
                            SizedBox(height: 16.0,),
                            TextField(
                              obscureText: true,
                              maxLines: 1,
                              cursorColor: Colors.white,
                              controller: confirmPassword,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelStyle: TextStyle(color: Color(4282492301),),
                                labelText: 'confirm password',
                              ),

                            ),
                            SizedBox(height: 16.0,),
                            Row(
                              children: <Widget>[

                                Icon(Icons.people,size: 50,color: Colors.white,),
                                Text("Gender",style: TextStyle(
                                  fontSize: 17.0,color: Color(4282492301),
                                ),),


                              ],
                            ),
                            Row(

                              children: <Widget>[
                                SizedBox(width: 64.0,),
                                Text("Female",style: TextStyle(
                                  fontSize: 17.0,color: Color(4282492301),
                                ),),
                                Radio(value: 1, groupValue: gr , onChanged: Gender,activeColor: Colors.white,),
                                Text("Male",style: TextStyle(
                                  fontSize: 17.0,color: Color(4282492301),
                                ),),
                                Radio(value: 2, groupValue: gr, onChanged: Gender,activeColor: Colors.white,),



                              ],
                            ),
                            Divider(height: 16.0,),
                            SizedBox(height: 16.0,),

                            Row(

                              children: <Widget>[
                                SizedBox(width: 30.0,),
                                Text("Are you a farmer?", style:
                                TextStyle(
                                  fontSize: 16.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  color: Color(4282492301),
                                ),),
                                Checkbox(
                                  value: farm,
                                  // ignore: argument_type_not_assignable
                                  onChanged: farmcheckbox,activeColor: Colors.white,

                                ),
                              ],
                            ),
                            Divider(height: 16.0,),
                            SizedBox(height: 16.0,),
                            Row(

                              children: <Widget>[
                                Checkbox(
                                  value: terms,
                                  onChanged: termsCheckBox,
                                  activeColor: Colors.white,

                                ),
                                Text("I accept the Terms and the Conditions", style:
                                TextStyle(
                                  fontSize: 16.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  color: Color(4282492301),
                                ),),


                              ],
                            ),
                            RaisedButton(
                              shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(12,10))),
                              color: Colors.transparent,

                              child:Padding(

                                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                child:
                                Text("Sign up",style: TextStyle(
                                  fontSize: 17.0,color: Color(4282492301),
                                ),),
                              ),
                              onPressed:  (){
                                sign();
                              },
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

  Future<List> sign() async{
    final response = await http.post("http://192.168.1.6/Sign.php", body: {
      "phoneNumber": email.text,
      "password": password.text,
      "Cpassword": confirmPassword.text,
    });
    var Answer = json.decode(response.body);
    print(Answer);
    if(Answer['pass'] != 1){
      if(Answer['success']==1){
        print("hello");
        Navigator.pushNamedAndRemoveUntil(context, '/home',ModalRoute.withName('/home'));


      }else{
        SnackBarPage();

      }
    }else{
      SnackBarPage();

    }

  }

  void farmcheckbox(bool value2) {
    setState(() {
      farm = value2;
    });
  }
  void termsCheckBox(bool value2) {
    setState(() {
      terms = value2;
    });
  }
  void Gender(int value) {
    setState(() {
      gr = value;
    });
  }
}
class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change!
              },
            ),
          );

          // Find the Scaffold in the Widget tree and use it to show a SnackBar!
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('Show SnackBar'),
      ),
    );
  }
}
