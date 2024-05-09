import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchable extends StatelessWidget {
  String title;

  Searchable({required this.title});

  @override
  Widget build(BuildContext context) {
    return Chip(
      color: MaterialStatePropertyAll(Color.fromARGB(255, 23, 2, 81)),
      shadowColor: const Color.fromARGB(255, 25, 5, 97),
      avatar: Icon(
        CupertinoIcons.clock,
        size: 25,
      ),
      label: Text(
        title,
        style:
            TextStyle(color: Color.fromARGB(255, 152, 110, 243), fontSize: 15),
      ),
    );
  }
}
