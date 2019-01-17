import 'package:flutter/material.dart';

class addToScreen extends StatefulWidget {
  @override
  _addToScreenState createState() => new _addToScreenState();
}

class _addToScreenState extends State<addToScreen> {
  @override
  var solution = TextEditingController();
  var problemController = TextEditingController();
  var titleController = TextEditingController();
  final GlobalKey<ScaffoldState> sc = new GlobalKey<ScaffoldState>();


  Widget build(BuildContext context) {
    return Scaffold(
      key: sc,

      appBar: AppBar(
        leading: FlatButton(onPressed: showDrawer, child: Icon(Icons.menu)),
        title: Text("Happy Farm",style: TextStyle(color: Color(4282492301)),),
        backgroundColor: Color(4280772949 ),),
      drawer: Drawer(

        child: Container(
          color: Colors.white,
          child: ListView(

            children: <Widget>[
              /*new UserAccountsDrawerHeader(
                decoration: new BoxDecoration(color: Color(4282492301)),
                accountName: new Text('Nesrine'),
                accountEmail: new Text('bounouhnesrine@gmail.com'),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new AssetImage("assets/me.jpg"),
                ),
              ),*/
              new ListTile(

                leading: Icon(Icons.home),
                title: new Text("Plantes",style: TextStyle(color: Color(4282492301)),),
                onTap: (){
                  Navigator.pushNamedAndRemoveUntil(context, '/home2',ModalRoute.withName('/home'));
                },

              ),
              new ListTile(
                leading: Icon(Icons.book),
                title: new Text("Problemes et solutions",style: TextStyle(color: Color(4282492301)),),
                onTap: (){
                  Navigator.pushNamedAndRemoveUntil(context, '/home',ModalRoute.withName('/home2'));
                },
              ),
              new ListTile(
                leading: Icon(Icons.vpn_key),
                title: new Text("logout",style: TextStyle(color: Color(4282492301)),),
                onTap: (){
                  Navigator.pushNamedAndRemoveUntil(context, '/login',ModalRoute.withName('/login'));
                },
              )
            ],
          ),
        ),

      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Color(4280772949)),
          child: Center(

            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[


                  SizedBox(height: 20,),
                  Column(
                    children: <Widget>[
                      TextField(
                        controller: titleController,
                        cursorColor: Colors.white,


                        decoration: InputDecoration(

                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: TextStyle(color: Color(4282492301,),fontSize: 20,),
                          hintText: 'Donnez un titre pour votre probleme',


                        ),

                      ),
                      SizedBox(height: 5,),
                      TextField(
                        controller: problemController,
                        cursorColor: Colors.white,

                        decoration: InputDecoration(

                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: TextStyle(color: Color(4282492301,),fontSize: 20,),
                          hintText: 'Presentez votre probleme',

                        ),

                      ),
                      SizedBox(height: 5,),
                      TextField(

                        controller: solution,
                        cursorColor: Colors.white,

                        decoration: InputDecoration(

                          fillColor: Colors.white,
                          filled: true,
                          labelStyle: TextStyle(color: Color(4282492301),fontSize: 20),
                          labelText: 'Expliquez votre solution',

                        ),
                        //obscureText: true,

                      ),

                      SizedBox(height: 5,),
                      RaisedButton(
                          shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(5, 30))),
                          // shape: CircleBorder(side: BorderSide(color: Color(4294942777 ))),
                          color: Colors.white,

                          child:Padding(

                            padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                            child:
                            Text("ajouter",style: TextStyle(
                              fontSize: 17.0,color: Color(4282492301),
                            ),),
                          ),
                          onPressed: (){
                            Navigator.pop(context);

                          }
                      ),


                    ],
                  ),



                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
  void showDrawer() {
    sc.currentState.openDrawer();
  }
}

