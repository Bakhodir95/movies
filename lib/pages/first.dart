import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movies/class/catalog.dart';
import 'package:movies/class/search.dart';

class FirstPage extends StatelessWidget {
  List<String> movies = [
    "Marvel",
    "Capitan  America",
    "Captain Marvel",
    "Thrall",
  ];
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
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
              child: Container(
                //! search bar
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey.shade500,
                ),
                child: Row(
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
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Recent Searches",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                // Adjust spacing between icon and chips
                Flexible(
                  child: Wrap(
                    spacing: 15,
                    runSpacing: 10,
                    children: [
                      Searchable(
                        title: "Marvel",
                      ),
                      Searchable(
                        title: "Captain America",
                      ),
                      Searchable(
                        title: "Captain Marvel",
                      ),
                      Searchable(
                        title: "Thrall",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Catalog(image: "images/movie1.png"),
                  Catalog(image: "images/Screenshot_2.png"),
                  Catalog(image: "images/Screenshot_3.png"),
                  Catalog(image: "images/Screenshot_4.png")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Recommended Movies For You",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Catalog(image: "images/movie1.png"),
                  Catalog(image: "images/Screenshot_2.png"),
                  Catalog(image: "images/Screenshot_3.png"),
                  Catalog(image: "images/Screenshot_4.png")
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/third");
                          },
                          icon: Icon(
                            Icons.home,
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
                          onPressed: () {},
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
                          onPressed: () {},
                          icon: Icon(
                            Icons.bookmark,
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
                            Navigator.pushNamed(context, "/second");
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
                            Navigator.pushNamed(context, "/second");
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
