import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/foundation.dart' ;
import 'package:http/http.dart' as http;
import 'package:planet/Principle2.dart';
import 'dart:convert';
import 'PostProblem.dart';

Future<List<PostProblem>> fetchPostsProblem(http.Client client) async {
  final response = await client.get('http://192.168.1.6/problem.php');

  return compute(parsePostsProblem, response.body);
}

List<PostProblem> parsePostsProblem(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<PostProblem>((json) => PostProblem.fromJson(json)).toList();
}
class home2 extends StatefulWidget {
  @override
  _home2State createState() => new _home2State();
}

class _home2State extends State<home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:FutureBuilder(
          future: fetchPostsProblem(http.Client()),
          builder:(context,snapshot){
            if (snapshot.hasError) print(snapshot.error);
            return snapshot.hasData
                ? Principle2(posts:snapshot.data)
                : Center(child: CircularProgressIndicator());
          }),

    );
  }
}
