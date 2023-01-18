import 'package:appstore/models/Globals.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Appinfo extends StatefulWidget {
  const Appinfo({super.key});

  @override
  State<Appinfo> createState() => _AppinfoState();
}

class _AppinfoState extends State<Appinfo> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> app =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    Map<String, dynamic> appinfo =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return 
        Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.white,
                leading: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ))),
            body: Container(
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: Image.asset(app["image"]),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  app["Name"],
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Meta",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 12, 198, 25),
                                      fontSize: 17),
                                ),
                                Text(
                                  "contains ads In-app purchase",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        app["Rating"],
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Icon(Icons.star, size: 18)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "61T Reviews",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      Icon(Icons.info_rounded, size: 18)
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "|",
                                style: TextStyle(
                                    fontSize: 30,
                                    height: 1,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Icon(Icons.download_sharp),
                                  Text("565 MB"),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "|",
                                style: TextStyle(
                                    fontSize: 30,
                                    height: 1,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Icon(Icons.reviews_sharp),
                                  Text("Rated For 7+"),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "|",
                                style: TextStyle(
                                    fontSize: 30,
                                    height: 1,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [Text("1B+"), Text("Downloads")],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 7, 156, 12),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "Install",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "About this game",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "      The Most Download App on Playstore ,This app category is as mention below Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rating And Review",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Rating and reviews are verifiednand are from people who use the same type of device that you use.",
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                app["Rating"],
                                style: TextStyle(fontSize: 50),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 7, 156, 12),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 7, 156, 12),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 7, 156, 12),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 7, 156, 12),
                                  ),
                                  Icon(
                                    Icons.star_half,
                                    color: Color.fromARGB(255, 7, 156, 12),
                                  ),
                                ],
                              ),
                              Text("3,57,13,171"),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text("5"),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 200,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.grey),
                                      ),
                                      Container(
                                        height: 10,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color.fromARGB(
                                                255, 7, 156, 12)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text("4"),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 200,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.grey),
                                      ),
                                      Container(
                                        height: 10,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color.fromARGB(
                                                255, 7, 156, 12)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text("3"),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 200,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.grey),
                                      ),
                                      Container(
                                        height: 10,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color.fromARGB(
                                                255, 7, 156, 12)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text("2"),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 200,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.grey),
                                      ),
                                      Container(
                                        height: 10,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color.fromARGB(
                                                255, 7, 156, 12)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text("1"),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 200,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.grey),
                                      ),
                                      Container(
                                        height: 10,
                                        width: 10,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color.fromARGB(
                                                255, 7, 156, 12)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage:
                                AssetImage("assets/images/akash1.jpeg"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Akash Dungrani",
                          ),
                          Spacer(),
                          Icon(Icons.info_rounded)
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Color.fromARGB(255, 7, 156, 12),
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Color.fromARGB(255, 7, 156, 12),
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Color.fromARGB(255, 7, 156, 12),
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Color.fromARGB(255, 7, 156, 12),
                          ),
                          Icon(
                            Icons.star_half,
                            size: 20,
                            color: Color.fromARGB(255, 7, 156, 12),
                          ),
                          Text("28/09/2022"),
                        ],
                      ),
                      Text(
                          "Instant messaging apps are now being designed to offer a mix of social, voice and text functions in one neat package. Line is one such feature-loaded app that supports all leading mobile platforms. Built by the Japanese arm of Naver, the application has been fairly popular in US, UK, China and other south-east Asian countries. This app was born as a means of communication when a disastrous earthquake hit Japan and devastated its communication system. ")
                    ]),
              ),
            ),
          );
        
  }
}
