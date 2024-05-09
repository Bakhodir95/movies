import 'package:flutter/material.dart';
import 'package:movies/pages/first.dart';
import 'package:movies/pages/second.dart';
import 'package:movies/pages/third.dart';

void main(List<String> args) {
  runApp(MoviesApp());
}

class MoviesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        "/second": (context) => SecondPage(),
        "/third": (context) => ThirdPage(),
        "/first": (context) => FirstPage(),
      },
    );
  }
}
