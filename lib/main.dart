import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 310,
                color: Colors.brown[100],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 100, left: 15, right: 15),
                    decoration: BoxDecoration(
                      color: Colors.brown[50],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            size: 25,
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 30,
                      left: 15,
                      right: 50,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 1,
                              color: Colors.orange,
                            ),
                            SizedBox(width: 9),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Positioned(
                                  left: 10,
                                  child: Text(
                                    "PUPULAR RECEPIES",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  top: 6,
                                  child: Text(
                                    "THIS WEEK",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 21,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.search_rounded,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 130,
                    margin: EdgeInsets.only(top: 20, left: 15),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildListTile(
                            "assets/images/chicken.jpg",
                            "Grilled Cicken",
                            "with Fruits Salad",
                            "assets/images/man.jpg",
                            "James Oliva"),
                        buildListTile(
                            "assets/images/chicken1.jpg",
                            "Grilled Cicken",
                            "with Fruits Salad",
                            "assets/images/man.jpg",
                            "chiris Miracal"),
                        buildListTile(
                            "assets/images/chicken.jpg",
                            "Grilled Cicken",
                            "with Fruits Salad",
                            "assets/images/man.jpg",
                            "James Oliva"),
                        buildListTile(
                            "assets/images/chicken1.jpg",
                            "Grilled Cicken",
                            "with Fruits Salad",
                            "assets/images/man.jpg",
                            "chiris Miracal"),
                      ],
                    ),
                  ),
                  SizedBox(height: 14),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "September 2",
                              style: TextStyle(
                                color: Colors.brown[100],
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "TODAY",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 13, right: 13),
                        child: Container(
                          height: 275,
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/chicken1.jpg",
                              ),
                            ),
                          ),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 0.2, sigmaY: 0.5),
                            child: Container(
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 200,
                        left: 50,
                        child: Text("BEST OF ",
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            )),
                      ),
                      Positioned(
                        top: 230,
                        left: 50,
                        child: Text("THE DAY ",
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  buildListTile(imagePath, name, name1, userimage, userName) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5, left: 10),
      height: 120,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        margin: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    imagePath,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 8,
                left: 3,
                bottom: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    name1,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 1,
                    width: 50,
                    color: Colors.orange,
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage(userimage),
                      ),
                      SizedBox(width: 4),
                      Text(
                        userName,
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 9,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
