import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/foundation.dart' ;
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'Post.dart';
import 'Principle.dart';

Future<List<Post>> fetchPosts(http.Client client) async {
  final response = await client.get('http://192.168.1.6/posts.php');

  return compute(parsePosts, response.body);
}

List<Post> parsePosts(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Post>((json) => Post.fromJson(json)).toList();
}



class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:FutureBuilder(
          future: fetchPosts(http.Client()),
          builder:(context,snapshot){
            if (snapshot.hasError) print(snapshot.error);
            return snapshot.hasData
                ? Principle(posts:snapshot.data)
                : Center(child: CircularProgressIndicator());
          }),

    );
  }
}
