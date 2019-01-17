import 'package:flutter/material.dart';
import 'Post.dart';
import 'package:flutter/foundation.dart' ;



class  Principle extends StatelessWidget {
  final List<Post> posts;
  final GlobalKey<ScaffoldState> sc = new GlobalKey<ScaffoldState>();


  Principle({Key key, this.posts}) : super(key: key);

  @override
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
             /* new UserAccountsDrawerHeader(
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
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
                  itemBuilder:(BuildContext context,int index){
                    return Card(
                      child:Column(
                        children: <Widget>[
                          Text(posts[index].title,style: TextStyle(fontSize: 24),),

                          SizedBox(height: 10,),
                          Image(image: NetworkImage('http://192.168.1.6/images/${index+1}.jpg')),
                          SizedBox(height: 5,),
                          Text(posts[index].body,style: TextStyle(fontSize: 20),),

                        ],
                      ),
                    );

                  }

              ),
          ),
          ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              RaisedButton(
                color: Color(4280772949),
                onPressed: (){
                  Navigator.pushNamed(context, '/home2');
                },
                child: Text("Problemes",style: TextStyle(color: Color(4282492301)),),

              ),


              RaisedButton(
                textTheme: ButtonTextTheme.accent,
                color: Color(4280772949),
                onPressed: (){
                  Navigator.pushNamed(context, '/home');
                },
                child: Text("Plantes",style: TextStyle(color: Color(4282492301)),textAlign: TextAlign.center,),
              ),
              RaisedButton(
                textTheme: ButtonTextTheme.accent,
                color: Color(4280772949),
                onPressed: (){
                  Navigator.pushNamed(context, '/addToScreen');

                },
                child: Icon(Icons.add_to_home_screen,color: Color(4282492301),),
              ),


            ],
          ),

      ]),

    );
  }
  void showDrawer() {
    sc.currentState.openDrawer();
  }




}
