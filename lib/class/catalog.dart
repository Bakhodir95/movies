import 'package:flutter/material.dart';

class Catalog extends StatelessWidget {
  String image;
  Catalog({required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 10, 20),
      child: Container(
        width: 140,
        height: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(17)),
            shape: BoxShape.rectangle,
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        clipBehavior: Clip.hardEdge,
      ),
    );
  }
}
