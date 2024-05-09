import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/class/catalog.dart';
import 'package:movies/class/search.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(15),
          color: Colors.black,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                //! search bar
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey.shade500,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 35,
                          color: Color(0xFFFFFFFF),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Comedy",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Icon(
                        Icons.cancel,
                        color: Colors.black,
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Results for ' comedy '",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
                child: SingleChildScrollView(
              child: Wrap(
                spacing: 15,
                runSpacing: 15,
                children: <Widget>[
                  for (var i = 0; i < 25; i++)
                    i % 2 == 0
                        ? BigCatalog(imageaddress: "images/movie1.png")
                        : BigCatalog(imageaddress: "images/Screenshot_3.png")
                ],
              ),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/first");
                          },
                          icon: Icon(
                            Icons.home,
                            size: 50,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/first");
                          },
                          icon: Icon(
                            Icons.search,
                            size: 50,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/first");
                          },
                          icon: Icon(
                            Icons.bookmark,
                            size: 50,
                            color: Colors.deepPurple,
                          ))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/first");
                          },
                          icon: Icon(
                            Icons.download,
                            size: 50,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/third");
                          },
                          icon: Icon(
                            Icons.person,
                            size: 50,
                            color: Colors.white,
                          ))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BigCatalog extends StatelessWidget {
  String imageaddress;
  BigCatalog({super.key, required this.imageaddress});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 180,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image:
            DecorationImage(image: AssetImage(imageaddress), fit: BoxFit.cover),
      ),
    );
  }
}
